Rails.application.routes.draw do
  root 'home#index'
  resources :jobs, only: [:index, :show]
  resources :companies, only: [:index, :show]
  namespace :admin do
    resource :company, only: [:show, :new, :create, :edit, :update]
    resources :jobs, only: [:show, :new, :create, :edit, :update, :destroy]
    get '/', to: 'admin#index'
    get '/login/:id', to: 'admin#login'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

