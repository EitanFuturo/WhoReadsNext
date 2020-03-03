Rails.application.routes.draw do
  resources :attendances
  resources :meetings
  resources :students
  resources :groups
  get 'home/index'
  devise_for :teachers
  resources :teachers

  post 'home/set_new_attendance', to: 'attendances#set_new_attendance', as: 'set_new_attendance'

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
