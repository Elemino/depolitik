Rails.application.routes.draw do


  devise_for :issues
  resources :users
  root 'welcome#index'


end
