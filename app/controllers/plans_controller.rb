class PlansController < ApplicationController
  before_action :set_plan, only: %i[show edit update destroy]

  def index
    @plans = Plan.all
    if params[:search]
      @plans = Plan.search(params[:search]).order("created_at DESC")
    else
      @plans = Plan.all.order('created_at DESC')
    end
  end

  def show
    @tasks = @plan.tasks
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
