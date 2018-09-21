Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/tasks', to: 'task_list#index', as: 'tasks'
    get '/tasks/new', to: 'task_list#new', as: 'new_task'
    post '/tasks', to: 'task_list#create'

    get '/tasks/:id', to: 'task_list#show', as: 'task'
    get '/tasks/:id/edit', to: 'task_list#edit', as: 'edit_task'
    patch '/tasks/:id', to: 'task_list#update'

  end
