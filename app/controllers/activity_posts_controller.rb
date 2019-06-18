class ActivityPostsController < ApplicationController
  before_action :set_activity_post, only: [:show, :destroy]

  def index         # GET /restaurants
    @activity_posts = ActivityPost.all
  end

  def show          # GET /restaurants/:id

  end

  def show_my

    @my_activity_posts_hosting = current_user.activity_posts.order(start_time: :asc)
    @my_activity_post_joined = current_user.activity_users
  end


  # post activities/:activity_id/join

  def join


  end

  def new           # GET /restaurants/new
    @activity_post = ActivityPost.new
  end

  def create        # POST /restaurants
    @activity_post = ActivityPost.new(activity_post_params)
    @activity_post.user = current_user
    if @activity_post.save
      redirect_to activity_posts_path
    else
      render :new
    end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
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
