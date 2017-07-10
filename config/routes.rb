Rails.application.routes.draw do
  root 'novels#index'
  resources :novels do
    resources :chapters
  end
end
