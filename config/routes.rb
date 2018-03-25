Rails.application.routes.draw do

#Static Pages
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/test', to: 'static_pages#test', as: 'test'



#Users 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    :omniauth_callbacks => 'users/omniauth_callbacks'
  } 

  resources :users, :only => [:show, :edit, :update] do
   #Messages
   post "send_email", on: :member
  end
  get '/profile', to: 'users#profile', as: 'profile'

#Reviews
resources :reviews do 
    resource :likes, controller: 'likes' do       
       delete "destroy_popup", on: :member
       end
    collection do
      get :cp
      get :choose_category
      get :all
    end
  end






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
