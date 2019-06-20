class ActivityUsersController < ApplicationController
  before_action :set_activity_user, only: [:destroy]

  def create

    @activity_user = ActivityUser.new(user_id: current_user.id, activity_post_id: params[:activity_post_id])

    if @activity_user.save
      redirect_to my_upcoming_activities_path
      #alert
    else
      redirect_to date_activities_path
      #alert
    end
  end

  private

  def set_activity_user
    @activity_user = ActivityUser.find(params[:id])
  end
end
