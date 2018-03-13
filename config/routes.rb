Rails.application.routes.draw do
  get 'books/new'

  devise_for :users
  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :books, only: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
