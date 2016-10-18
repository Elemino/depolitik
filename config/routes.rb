Rails.application.routes.draw do

<<<<<<< HEAD
  get "/pages/:page" => "pages#show"
=======
>>>>>>> 487f7cc22b03ba6ee41326e85dcade958a70da51

  devise_for :issues

  root 'welcome#index'

  resources :issues, only: [:index, :show]


end
