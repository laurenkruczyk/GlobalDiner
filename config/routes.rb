FoodScrambler::Application.routes.draw do

 devise_for :users
  root "welcome#index"

  namespace :admin do
    get 'home' => "home#index" 
  end
end
