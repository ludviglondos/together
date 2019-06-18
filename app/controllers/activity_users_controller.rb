class ActivityUsersController < ApplicationController
  before_action :set_activity_user, only: [:destroy]

  def create

    @activity_user = ActivityUser.new(user_id: current_user.id, activity_post_id: params[:activity_post_id])

    if @activity_user.save
      redirect_to my_activities_path
      #alert
    else
      redirect_to activity_post_path(params[:activity_post_id])
      #alert
    end
  end

  def destroy
    @activity_user.destroy
    redirect_to my_activities_path
  end

  private

  def set_activity_user
    @activity_user = ActivityUser.find(params[:id])
  end

  def activity_user_params
    params.require(:activity_post).permit(:id)
  end
end
