Rails.application.routes.draw do

    root 'tasks#index'
    #get the form before you can fill it out  
    #as: allows both get and post to use tasks route
    get    '/tasks'         => 'tasks#index', as: 'tasks' 
    post   '/tasks'         => 'tasks#create'
    get    '/tasks/new'     => 'tasks#new'
    delete 'tasks/:id'      => 'tasks#destroy'
    get    'tasks/:id/'     => 'tasks#show', as: 'task'
    get    'tasks/:id/edit' => 'tasks#edit'
    patch  'tasks/:id'      => 'tasks#update', as: 'task_update'
    #I can remove this path - somehow?
    patch 'tasks/:id/completed' => 'tasks#complete'

    #examples
    #get 'albums/by_year/:year' => 'albums#by_year'
    #get 'artist/:id/albums' => 'artist#albums'
    #resources :albums, only: [:index, :show]
end
