Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # make welcome page with docs for authenticated user (instead of welcome#index) 
  resources :docs
  authenticated :user do
    root 'docs#index', as: 'authenticated_root'
  end

  root 'welcome#index'
end
