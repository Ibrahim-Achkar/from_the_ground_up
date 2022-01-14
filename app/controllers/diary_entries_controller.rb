class DiaryEntriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @plan = Plan.find(params[:plan_id])
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def new
    @plan = Plan.find(params[:plan_id])
    @diary_entry = DiaryEntry.new
    @moods = set_moods
  end

  def create
    @diary_entry = DiaryEntry.new(diary_entry_params)
    @plan = Plan.find(params[:plan_id])
    @plan.user = current_user
    @diary_entry.plan = @plan
    if @diary_entry.save
      flash.notice = "Entry Saved!"
      redirect_to plan_path(@plan)
    else
      render :new
    end
  end

  private

  def diary_entry_params
    params.require(:diary_entry).permit(:mood_list, :title, :content, :user_id, :plan_id)
  end

  def set_moods
    ["🙂",
     "😀",
     "😛",
     "😂",
     "😎",
     "🤨",
     "😐",
     "😣",
     "😥",
     "😫",
     "😨",
     "😡",
     "😴",
     "🤯",
     "🤪"]
  end
end
