GlobalDiner::Application.routes.draw do


  devise_for :users
    root "welcome#index"

  resources :meals

  # resources :users do
  #     resources :worldmaps, controller: 'users/user_id/worldmaps'
  # end

  get 'worldmap' => 'worldmap#index'
  

  namespace :admin do
      get 'home' => "home#index" 
  end
end