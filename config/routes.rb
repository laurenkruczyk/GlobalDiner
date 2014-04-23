GlobalDiner::Application.routes.draw do


  devise_for :users
    root "welcome#index"

  resources :countries do
     resources :meals 
   end

   # resources :meals


  get 'worldmap' => 'worldmap#index'
  

    namespace :admin do
    resources :users, only: [:index, :destroy]
    resources :meals, only: [:destroy]

      get 'home' => "home#index" 
  end
end