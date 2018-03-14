Rails.application.routes.draw do
  
  get 'messages/new'

#Static Pages
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'


#Users 
  devise_for :users
    resources :users, :only => [:show]
    get '/profile', to: 'users#profile', as: 'profile'

#Reviews
resources :reviews

#Messages
resources :messages 

#Books - en STAND BY
  get 'books/new'
  get 'books/search'
  get 'books/autocomplete'
  get 'books/index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
