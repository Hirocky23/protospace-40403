Rails.application.routes.draw do
  devise_for :users, skip: :sessions
  devise_scope :user do
    get 'users/sign_in', to: 'devise/sessions#new', as: :new_user_session
    post 'users/sign_in', to: 'devise/sessions#create', as: :user_session
    delete 'users/sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  root 'top#index'

  resources :prototypes do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show]
end