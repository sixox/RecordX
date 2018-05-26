Rails.application.routes.draw do

  get 'trains/index'
  get 'trains/show'
  get 'trains/new'
  get 'trains/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :muscles, only: [:index, :show] do
    resources :workouts, only: [:index, :show]
  end


  resources :trains


end
