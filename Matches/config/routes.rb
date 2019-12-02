Rails.application.routes.draw do
  devise_for :users
  resources :matches
  resources :sessions, only: [:create,:destroy]
  match "/matches/search" => "matches#search", :via => :post, :as => :team1
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
