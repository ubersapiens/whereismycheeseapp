Cheesy::Application.routes.draw do
  post "signup" => "site#signup", :as => :signup
  post "login"  => "site#login"
  get "logout" => "site#logout"
  
  get "cheeses" => "site#cheeses", :as => :cheeses
  get "cheese/:id" => "site#cheese", :as => :cheese_detail
  post "ratings" => "site#ratings"
  
  resources :users
  
  root :to => 'site#index'
end
