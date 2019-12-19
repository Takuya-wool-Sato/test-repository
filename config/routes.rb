Rails.application.routes.draw do
  get 'home/index'
  get 'home/authentication'
  devise_for :users
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "tasks/:id/completed" => "tasks#completed"
  post "tasks/:id/incomplete" => "tasks#incomplete"
end
