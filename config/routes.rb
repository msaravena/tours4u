Rails.application.routes.draw do
  resources :tours
  root 'tours#index'
end
