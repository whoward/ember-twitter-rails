class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: {error: :not_found}, status: :not_found
  end
  
  def require_authentication
    render json: {error: 'Authentication Required'}, status: :unauthorized if current_user.guest?
  end
  
  def current_user
    @current_user ||= fetch_current_user || GuestUser
  end
  
  private
  
  def fetch_current_user
    match = /\ABearer (\d+)\z/.match(request.headers['Authorization'])
    
    User.find_by(id: match[1]) if match
  end
end
