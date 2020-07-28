class UsersController < ApplicationController
  def index
    if params[:worker_test].present?
      UserJob.perform_later({date: Time.now.to_s})
    end
    #redirect_to root_path
  end

  def update
  end
end
