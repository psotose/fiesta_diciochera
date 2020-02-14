Rails.application.routes.draw do
  devise_for :users
  get 'todos/index', as: 'todos'
  get 'todos/:id', to: 'todos#show', as:'todo_show'
  patch 'todos/:id', to: 'todos#update', as: 'todo_update'
  get 'tasks/index'
  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
