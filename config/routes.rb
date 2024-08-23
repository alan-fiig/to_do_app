Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homework/tasks#index"

  scope module: :homework, path: :hm do
    resources :tasks, only: [:index, :new, :create] do
      get "preview", on: :member
    end
  end

  namespace :admin do
    resources :users, except: [:show, :destroy]
  end

end
