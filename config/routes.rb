Rails.application.routes.draw do
  
  get 'messages/new'

#Static Pages
  root 'static_pages#home'
get '/contact', to: 'static_pages#contact', as: 'contact'
get '/about', to: 'static_pages#about', as: 'about'



#Users 
  devise_for :users
    resources :users, :only => [:show, :edit, :update]
    get '/profile', to: 'users#profile', as: 'profile'

#Reviews
resources :reviews

#Messages
resources :messages, :only => [:new, :create]

#Books - en STAND BY
  get 'books/new'
  get 'books/search'
  get 'books/autocomplete'
  get 'books/index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
