class GoalsController < ApplicationController
  before_action :authenticate_user!

  def new
    @plan = Plan.find(params[:plan_id])
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @plan = Plan.find(params[:plan_id])
    @plan.user = current_user
    @goal.plan = @plan
    if @goal.save
      flash.notice = "Entry Saved!"
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:content, :user_id, :plan_id)
  end
end
