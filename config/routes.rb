Rails.application.routes.draw do
  root 'novels#index'

  resources :novels, param: :slug do
    get '/:chapter_number', to: 'chapters#show'
    # resources :chapters
  end

end
