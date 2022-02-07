Rails.application.routes.draw do
  resources :admins
  root "home#index"
  #get 'home/index', to: "home#index"
  resources :applications
  resources :properties
  resources :applicants
  resources :agents
  resources :admins
  resources :session, only: [:new, :create, :destroy]
  get 'signup', to: "agents#new", as: 'signup'
  get 'app_signup', to: "applicants#new", as: 'app_signup'
  get 'login', to: "session#new", as: 'login'
  get 'logout', to: "session#destroy", as: 'logout'
  get 'admin_signup', to: "admins#new", as: 'admin_signup'
  get 'curr_applications', to: "applications#curr_applications", as: 'curr_applications'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
