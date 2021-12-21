class PlansController < ApplicationController
  before_action :set_plan, only: %i[show edit update destroy]
  
  def index
    @plans = Plan.all
    @plan = Plan.new
    if params[:search]
      @plans = Plan.search(params[:search]).order("created_at DESC")
    else
      @plans = Plan.all.order('created_at DESC')
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user = current_user
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @plan.update(plan_params)
    redirect_to plan_path(@plan)
  end

  def destroy
    @plan.destroy
    redirect_to plans_path
  end


  private

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:name, photos: [])
  end
end
