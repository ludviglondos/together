class ActivityPostsController < ApplicationController
  before_action :set_activity_post, only: [:show, :destroy]

  def index
    @activity_posts = ActivityPost.all
  end

  def show
    @has_joined = @activity_post.users.where(id: current_user.id).length.positive?
    if @has_joined
      @activity_user = @activity_post.activity_users.find_by(user: current_user)
    end
  end

  def show_my
    @my_activity_posts_hosting = current_user.activity_posts.order(start_time: :asc)
    @my_activity_post_joined = current_user.activity_users
  end

  def new
    @activity_post = ActivityPost.new
  end

  def create
    @activity_post = ActivityPost.new(activity_post_params)
    @activity_post.user = current_user
    if @activity_post.save
      redirect_to activity_posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @activity_post.destroy
    redirect_to activity_posts_path
  end

  private

  def set_activity_post
    @activity_post = ActivityPost.find(params[:id])
  end

  def activity_post_params
    params.require(:activity_post).permit(:description, :start_time, :duration, :capacity, :title, :category_id)
  end
end
