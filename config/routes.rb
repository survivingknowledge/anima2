Rails.application.routes.draw do
  root 'novels#index'
  resources :novels
end
