Rails.application.routes.draw do
  devise_for :users
  root to: 'coaches#index'
  resources :coaches
end
