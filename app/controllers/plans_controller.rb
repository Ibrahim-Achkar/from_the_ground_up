class PlansController < ApplicationController
  before_action :set_plan, only: %i[show edit update destroy]

  helper_method :find_icon

  def index
    @plans = Plan.all
    @categories = set_categories
    @plan = Plan.new
    @user = current_user
    if params[:search]
      @plans = Plan.search(params[:search]).order("created_at DESC")
    else
      @plans = Plan.all.order('created_at DESC')
    end
  end

  def show
    @tasks = @plan.tasks
    @resources = @plan.resources

    @resource_info = get_resource_info(@resources) if @resources
    @goals = @plan.goals
    @diary_entries = @plan.diary_entries

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

  def upvote
    @plan = Plan.find(params[:id])
    @plan.upvote_by current_user
    redirect_back(fallback_location: root_path)
  end

  def downvote
    @plan = Plan.find(params[:id])
    @plan.downvote_by current_user
    redirect_back(fallback_location: root_path)
  end

  def find_icon(plan)
    icons = {
      "Art" => "fas fa-palette",
      "Cooking" => "fas fa-utensils",
      "Finance" => "fas fa-money-bill-alt",
      "Gaming" => "fas fa-gamepad",
      "Gardening" => "fas fa-leaf",
      "Health & Wellbeing" => "fas fa-notes-medical",
      "Language" => "fas fa-language",
      "Misc" => "fas fa-random",
      "Music" => "fas fa-music",
      "Professional Development" => "fas fa-medal",
      "Science" => "fas fa-microscope",
      "Sport & Fitness" => "far fa-futbol",
      "Tech" => "fas fa-laptop"
    }

    icons[plan]
  end

  private

  def set_categories
    ["Art",
    "Cooking",
    "Finance",
    "Gaming",
    "Gardening",
    "Health & Wellbeing",
    "Language",
    "Misc",
    "Music",
    "Professional Development",
    "Science",
    "Sport & Fitness",
    "Tech"]
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:name, :category_list, :tag_list, photos: [])
  end

  def get_resource_info(resources_array)
    resource_info_array = []

    resources_array.each do |resource|
      page_meta = MetaInspector.new(resource.url)

      page_hash = {
        id: resource.id,
        url: page_meta.url,
        title: page_meta.title,
        description: page_meta.description,
        image: page_meta.images.best
      }

      resource_info_array.push(page_hash)
    end
    resource_info_array
  end
end
