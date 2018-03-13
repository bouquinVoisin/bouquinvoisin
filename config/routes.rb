Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/edit'

  get 'books/new'

  
  devise_for :users
    resources :users, :only => [:show, :profile]



  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'books/search'
  get 'books/autocomplete'
  get 'books/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
