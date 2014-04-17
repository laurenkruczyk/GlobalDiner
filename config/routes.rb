GlobalDiner::Application.routes.draw do


  devise_for :users
    root "welcome#index"

  resources :countries do
     resource :meal
   end

  resources :meals

  get 'worldmap' => 'worldmap#index'
  

  namespace :admin do
      get 'home' => "home#index" 
  end
end