Rails.application.routes.draw do

  devise_for :issues
  devise_for :issues


  root 'welcome#index'


end
