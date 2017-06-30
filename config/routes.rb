Rails.application.routes.draw do
  resources :gems, only: [:index]
  root to: "static_pages#root"
  get '/favorites' => "static_pages#favorites"
end
