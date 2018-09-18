Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/task_list', to: 'task_list#index'
    get '/task_list/:id', to: 'task_list#show'

  end
