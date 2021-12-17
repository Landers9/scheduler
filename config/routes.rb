Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', to: "users#admin", as: 'rails_admin'

  devise_for :users

  resources :users, only: [:show]

  resources :plannings, only: [:new, :create, :update]

  delete '/delete_planning/:id', to: 'plannings#destroy', as: 'delete_planning'

  get '/edit_planning/:id', to: 'plannings#edit', as: 'edit_planning'

  root to: "homes#index"

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
