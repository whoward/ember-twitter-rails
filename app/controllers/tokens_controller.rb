class TokensController < ApplicationController
  def create
    user = User.find_by(handle: params.require(:username))
    pass = params.require(:password)
    
    if user && pass == 'secret'
      render json: {        
        access_token: user.id,
        token_type: 'token',
        expires_in: null,
        refresh_token: user.id
      }
    else
      render json: {}, status: :bad_request
    end
  end
end
