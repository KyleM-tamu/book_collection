Rails.application.routes.draw do
  resources :user_books
  resources :users
  root "user_books#index"

  match 'about', to: "main#about", via: :get
  match 'hello', to: "main#hello", via: :get

  get 'main/index'

  resources :categories do
    member do
      get :delete
    end
  end

  resources :books do
    member do
      get :delete
    end
  end
  # t
end
