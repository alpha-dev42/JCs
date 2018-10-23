Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  as :user do
  get 'signin', to: 'devise/sessions#new', as: :new_user_session
  post 'signin', to: 'devise/sessions#create', as: :user_session
  delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
end

  resources :users
  resources :products do
  resources :comments
  end  
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'simple_pages/about'

  get 'simple_pages/contact'

  root 'simple_pages#index'
  get 'simple_pages/index'

  # Thank you message after form submission
  post 'simple_pages/thank_you'


 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

