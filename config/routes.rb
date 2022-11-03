Rails.application.routes.draw do
  namespace :client do
    get 'dashboard/index'
  end
  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/pricing'
  get 'welcome/features'
  get 'welcome/faq'
  resources :invoices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
