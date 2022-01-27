class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :home ]
  helper_method :find_icon
  def home
  end

  def dashboard
    if current_user
       @user = current_user
       @plans = @user.plans
       @plan = Plan.new
       @categories = set_categories

       #redirect_to new_plan_path and return
    #   @likes = Like.where(user: @user)
    else
       redirect_to new_user_session_url
    end
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
end
