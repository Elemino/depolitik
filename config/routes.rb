Rails.application.routes.draw do

  get "/pages/:page" => "pages#show"

  devise_for :issues

  root 'welcome#index'

  resources :issues, only: [:index, :show]


end
