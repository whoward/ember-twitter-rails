class UsersController < ApplicationController
  before_action :require_authentication, only: %i(show)
  
  def show
    render json: User.find_by!(handle: params[:id])
  end
  
  def current
    render json: current_user
  end
end
