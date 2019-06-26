class ActivityPostsController < ApplicationController
  before_action :set_activity_post, only: [:show, :edit, :update, :destroy, :cancel_activity]

  def index
    activities_by_date
    if params[:category_id].present?
      @activity_posts = @activity_posts.where(category_id: params[:category_id])
    end
  end

  def show
  end

  def activities_by_date
    @categories = Category.all
    if params[:date].present?
      @date = Date.parse(params[:date])
    else
      @date = Date.today
    end

    if @date == Date.today
      @date_show = "Today"
    elsif @date == Date.today + 1
      @date_show = "Tomorrow"
    else
      @date_show = @date.strftime("%A, %b %d")
    end

    @activity_posts_next_up = ActivityPost.all

    @activity_posts = ActivityPost.on_date(@date)

    if params[:category_id].present?
      @activity_posts = @activity_posts.where(category_id: params[:category_id])
    end
  end

  def show_my_upcoming
    set_vars_for_profile
  end

  def my_hosting
    set_vars_for_profile
  end

  def new
    @activity_post = ActivityPost.new
  end

  def create
    @activity_post = ActivityPost.new(activity_post_params)
    if params[:quick_create]
      category = Category.find(params[:activity_post][:category_id])
      @activity_post.category = category
      case category.name
      when 'Walking' #Need to change to the correct logic when it is displayed on index page
        @activity_post.update(description: "Lets take a Walk!", duration: 20, capacity: 10, title: "Lets take a Walk!")
      when 'Fika'
        @activity_post.update(description: "Lets have a Fika!", duration: 15, capacity: 2, title: "Lets have a Fika!")
      when 'Sports'
        @activity_post.update(description: "Im planning to do the following sport activity, come join me!", duration: 60, capacity: 4, title: "Sport event!")
      end
    end
    @activity_post.user = current_user
    if @activity_post.save
      #alert
      redirect_to my_hosting_path
    else
      #alert
      redirect_to date_activities_path
    end
  end

  def edit
  end

  def update
    @activity_post.update(activity_post_params)
    redirect_to my_activities_path
  end

  def destroy
    @activity_post.destroy
    #add alert
    redirect_to my_activities_path
  end

  def cancel_activity
    @activity_post.activity_users.find_by(user_id: current_user.id).destroy
    redirect_to date_activities_path
  end

  private

  def set_activity_post
    @activity_post = ActivityPost.find(params[:id])
  end

  def activity_post_params
    params.require(:activity_post).permit(:description, :start_time, :duration, :capacity, :title, :category_id)
  end

  def set_vars_for_profile
    @categories = Category.all
    @activity_users = ActivityUser.all
    @my_activity_post_joined = current_user.activity_users
    @my_activity_posts_hosting = current_user.activity_posts.order(start_time: :asc)
  end
end
