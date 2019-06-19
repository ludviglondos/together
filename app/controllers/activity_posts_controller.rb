class ActivityPostsController < ApplicationController
  before_action :set_activity_post, only: [:show, :edit, :update, :destroy]

  def index
    @activity_posts = ActivityPost.all
  end

  def show
    @activity_posts = ActivityPost.all
    @has_joined = @activity_post.users.where(id: current_user.id).length.positive?
    if @has_joined
      @activity_user = @activity_post.activity_users.find_by(user: current_user)
    end
  end

  def show_my
    @my_activity_post_joined = current_user.activity_users
    @my_activity_posts_hosting = current_user.activity_posts.order(start_time: :asc)

  end

  def new
    if true #Need to change to the correct logic when it is displayed on index page
      @activity_post_default = ActivityPost.new(description: "Lets take a Walk!", duration: 15, capacity: 10, title: "Walking")
      @activity_post_default.category_id = Category.find_by_name("Walking").id
    elsif false
      @activity_post_default = ActivityPost.new(description: "Lets have a Fika!", duration: 15, capacity: 2, title: "Fika")
      @activity_post_default.category_id = Category.find_by_name("Fika").id
    elsif false
      @activity_post_default = ActivityPost.new(description: "Lets have a Lunch!", duration: 15, capacity: 2, title: "Lunch")
      @activity_post_default.category_id = Category.find_by_name("Lunch").id
    else
      @activity_post_default = ActivityPost.new(description: "I want to play Padel come join me!", duration: 15, capacity: 4, title: "Padel")
      @activity_post_default.category_id = Category.find_by_name("Padel").id
    end
  @activity_post = ActivityPost.new
  end

  def create
    @activity_post = ActivityPost.new(activity_post_params)
    @activity_post.user = current_user
    if @activity_post.save
      #alert
      redirect_to my_activities_path
    else
      #alert
      redirect_to activity_posts_path
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

  private

  def set_activity_post
    @activity_post = ActivityPost.find(params[:id])
  end

  def activity_post_params
    params.require(:activity_post).permit(:description, :start_time, :duration, :capacity, :title, :category_id)
  end
end
