Rails.application.routes.draw do


  devise_for :issues

  root 'welcome#index'

  resources :issues, only: [:index, :show]


end
