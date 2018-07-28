Rails.application.routes.draw do

  get 'static_pages/about'

  get "/pages/:page" => "pages#show"

  get "/about.html", to: "static_pages#about", as: "about"

  devise_for :issues

  root 'welcome#index'

  resources :issues, only: [:index, :show] do
    root 'issues#dashboard', as: "authenticated_root"
  end

end
