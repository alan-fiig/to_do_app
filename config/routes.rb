Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"

  scope :homework do
    resources :tasks, only: [:index, :new, :create] do
      get "preview", on: :member
    end
  end

  namespace :admin do
    resources :users, except: [:show, :destroy]
    resources :kye
  end

end
