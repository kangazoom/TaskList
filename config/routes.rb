Rails.application.routes.draw do

    resources :tasks, controller: 'task_list'

    patch '/tasks/:id/complete', to: 'task_list#complete', as: "complete_task"
  end
