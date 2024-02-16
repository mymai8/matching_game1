Rails.application.routes.draw do
  
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only:[:edit, :update]
  
  get 'students/index'
  resources :students do
    resources :comments, only: [:create, :delete]
  end
  
  root to: 'coaches#index'
  resources :coaches do
    resources :orders, only: [:index, :create]
    resources :comments, only: [:create, :delete]
  end
end