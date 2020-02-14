Rails.application.routes.draw do
  resources :attendances
  resources :meetings
  resources :students
  resources :groups
  get 'home/index'
  devise_for :teachers
  resources :teachers

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
