Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', to: "users#admin", as: 'rails_admin'

  devise_for :users
  resources :users, only: [:show]

  resources :plannings

  root to: "homes#index"

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
