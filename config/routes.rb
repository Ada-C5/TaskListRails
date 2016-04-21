Rails.application.routes.draw do

    root 'tasks#index'
    #get the form before you can fill it out  
    get  '/tasks' => 'tasks#index', as: 'tasks' 
    post '/tasks' => 'tasks#create'
    get '/tasks/new' => 'tasks#new'
    delete 'tasks/:id' => 'tasks#destroy'
    get 'tasks/:id/' => 'tasks#show', as: 'task'
    post 'tasks/:id/edit' => 'tasks#edit'

  
end
