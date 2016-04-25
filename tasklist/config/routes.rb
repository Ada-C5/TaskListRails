Rails.application.routes.draw do

  get 'people/' => 'people#index' #count of how many uncomplete tasks
  get '/people/:id' => 'people#show', as: 'person'
  get '/people/:id/tasks' => 'people#tasks', as: 'show_tasks'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'
  get '/' => 'tasks#index'

  # also want /tasks to display a list of all tasks
  get '/tasks' => 'tasks#index', as: 'tasks' # the as needs to be on the first route

  # form for new task entry
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create' # used to have as: 'tasks' but we had to move it

  # display a specific task -- needs to go below or else the new doesn't work. stupid smart computer.
  get '/tasks/:id' => 'tasks#show', as: 'task'

  # edit the fields of a specific task and update
  get '/task/:id/edit' => 'tasks#edit', as: 'edit_task'

  # update a specific task by marking complete or making other changes from get/edit page
  patch '/tasks/:id' => 'tasks#update'

  # delete a specific photo
  delete '/tasks/:id' => 'tasks#destroy'


end
