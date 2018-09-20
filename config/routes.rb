Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/task_list', to: 'task_list#index', as: 'task_list'
    get '/task_list/new', to: 'task_list#new', as: 'new_task'
    post '/task_list', to: 'task_list#create'

    get '/task_list/:id', to: 'task_list#show', as: 'task'

  end
