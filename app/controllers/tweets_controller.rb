class TweetsController < ApplicationController
  before_action :require_authentication, only: %i(create)
  
  def index
    render json: collection, include: %w(author)
  end
  
  def create
    tweet = current_user.tweets.create(permitted_params)
    render json: tweet, include: %w(author)
  end
  
  private
  
  def permitted_params
    params.require(:data).require(:attributes).permit(:text)
  end
  
  def collection
    scope = Tweet.unscoped
    
    scope = user_scope(scope, params[:user]) if params[:user].present?
    
    scope = hashtag_scope(scope, params[:hashtag]) if params[:hashtag].present?
    
    scope
  end
  
  def user_scope(scope, handle)
    user_id = User.where(handle: handle).pluck(:id).first
    
    scope.where(user_id: user_id)
  end
  
  def hashtag_scope(scope, tag)
    scope.where('text ilike ?', "%##{tag}%")
  end
end
