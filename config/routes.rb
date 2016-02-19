Rails.application.routes.draw do
  resources :users, only: %i(show) do
    get :current, on: :collection
  end
  
  resources :tweets, only: %i(index create)
  
  post 'token' => 'tokens#create'
end
