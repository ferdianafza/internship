Rails.application.routes.draw do
  resources :presences
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reports
  resources :majors
  devise_for :students, controllers: { sessions: 'students/sessions' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get '/students/sign_out' => 'devise/sessions#destroy'
  end

  resources :homes
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
