Rails.application.routes.draw do

    root 'tasks#index'
    #get the form before you can fill it out  
    get  '/tasks' => 'tasks#index', as: 'tasks' 
    post '/tasks' => 'tasks#create'
    get '/tasks/new' => 'tasks#new'
    delete 'tasks/:id' => 'tasks#destroy'
    get 'tasks/:id/' => 'tasks#show', as: 'task'
    get 'tasks/:id/edit' => 'tasks#edit'
    patch 'tasks/:id' => 'tasks#update', as: 'task_update'
    patch 'tasks/:id/completed' => 'tasks#complete'
end
