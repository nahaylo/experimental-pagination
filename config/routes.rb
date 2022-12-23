Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "traditional#index"
  resources :traditional do
    get :wo_count, on: :collection
  end

  resources :keyset
end
