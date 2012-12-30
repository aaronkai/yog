Rails3BootstrapDeviseCancan::Application.routes.draw do
 
  resources :runs

  authenticated :user do
    root :to => 'runs#index'
    resources :runs
  end
  
  root :to => "users#index"
  devise_for :users
  resources :users
end
