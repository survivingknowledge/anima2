Rails.application.routes.draw do
  root 'novels#index'

  resources :novels, param: :slug do
    resources :chapters
    get '/:chapter_num', to: 'chapter#show'
  end
end
