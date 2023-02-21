Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  get 'articles', to: 'articles#list', as: 'articles'

  get 'articles/new', to: 'articles#new'
  get 'articles/:id', to: 'articles#show', as: 'article'
  post 'articles', to: 'articles#create', as: 'create_article'

  get 'articles/:id/edit', to: 'articles#edit', as: 'edit'
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy'
end
