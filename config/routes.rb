Rails.application.routes.draw do
  resources :owls
  resources :hedgehogs
  resources :chicks
  resources :dogs
  resources :cats do
    collection do
      get 'search'
    end
  end
  root to: redirect("/cats")
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
