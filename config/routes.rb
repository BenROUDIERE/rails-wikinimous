Rails.application.routes.draw do
  #resources :articles
  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new'

  get 'article/:id/edit', to: 'articles#edit', as: :edit
  get 'article/:id', to: 'articles#show', as: :article

  delete 'article/:id', to: 'articles#destroy'
  patch 'article/:id', to: 'articles#update'
  post 'articles', to: 'articles#create'
end
