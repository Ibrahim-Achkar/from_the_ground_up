class TasksController < ApplicationController
  before_action :authenticate_user!, :set_plan, :user_owns_plan?
  before_action :set_task, only: %i[index mark]

  def index
    @tasks = Task.where(plan: @plan)
  end

  def new
    if user_owns_plan?
      @task = Task.new
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def create
    if user_owns_plan?
      @task = Task.new(task_params)
      @task.plan = @plan
      if @task.save
        redirect_back(fallback_location: root_path)
      else
        render :new
      end
    else
      redirect_to plan_path(@plan)
    end
  end

  def mark
    if @task.status == 'pending'
      @task.status = 'complete'
      @task.save!
    else
      @task.status = 'pending'
      @task.save!
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def set_plan
    @plan = Plan.find(params[:plan_id])
  end

  def task_params
    params.require(:task).permit(:due_date, :action)
  end

  def user_owns_plan?
    puts @plan
    puts current_user
    @plan.user == current_user
  end
end
