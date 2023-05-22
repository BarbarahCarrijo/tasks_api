Rails.application.routes.draw do
  resources :articles
  #devise_for :users
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # token auth routes available at /api/v1/auth
  #namespace :api do
  #  scope :v1 do
  #    mount_devise_token_auth_for 'User', at: 'auth'
  #  end
  #end
  #
  ## devise_for :users
  #devise_for :users, controllers: {
  #    sessions:      'users/sessions',
  #    registrations: 'users/registrations'
  #}

  scope :api, defaults: {format: :json} do
    scope :v1, defaults: {format: :json} do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end


end
