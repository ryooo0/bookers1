Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'books#top'

  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'post'
  get 'books/:id/edit' => 'books#edit', as: 'edit_post'
  patch 'posts/:id' => 'books#update', as: 'update_post'
  delete 'posts/:id' => 'books#destroy', as: 'destroy_post'
end
