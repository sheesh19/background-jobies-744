class ProfilesController < ApplicationController

  def update
    if current_user.update(user_params)
      # call our api
      UpdateUserJob.perform_later(current_user)
    end
  end

  private

  def user_params
  end
end
