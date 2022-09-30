Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets
 # root "monsters#index"
   root "tweets#index"
end
