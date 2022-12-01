Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 

  authenticated :user do
    root 'projects#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'users#index'
  end


  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end 
  resources :technologies
  resources :projects 
  resources :project_technologies
  # Defines the root path route ("/")

end
