Rails.application.routes.draw do
  resources :locations, only: [:new, :create, :show]

  root to: 'locations#new'
end
