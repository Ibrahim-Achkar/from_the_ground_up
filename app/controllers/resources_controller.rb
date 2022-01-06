class ResourcesController < ApplicationController
  before_action :authenticate_user!

  def new
    @plan = Plan.find(params[:plan_id])
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    @plan = Plan.find(params[:plan_id])
    @plan.user = current_user
    @resource.plan = @plan
    if @resource.save
      flash.notice = "Saved!"
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:url, :plan_id, :user_id)
  end
end
