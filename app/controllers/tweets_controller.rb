class TweetsController < ApplicationController
  before_action :require_authentication, only: %i(create)
  
  def index
    render json: Tweet.all, include: %w(author)
  end
  
  def create
    tweet = current_user.tweets.create(permitted_params)
    render json: tweet, include: %w(author)
  end
  
  private
  
  def permitted_params
    params.require(:data).require(:attributes).permit(:text)
  end
end
