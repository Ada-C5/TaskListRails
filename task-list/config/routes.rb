Rails.application.routes.draw do

  root 'tasks#index'

#look at rails conventions for these paths...
#prefix, verb, uri pattern, controller#actions
#try to understand these things...
  get '/tasks' => 'tasks#index', as: 'tasks'
  get '/tasks/completed' => 'tasks#completed'
  post '/tasks' => 'tasks#create'
  get '/tasks/add' => 'tasks#add'
  get '/tasks/:id/edit' => 'tasks#edit', as: 'edit_tasks' #mess around with the as some more.
  get '/tasks/:id' => 'tasks#show', as: 'task'
  delete '/tasks/:id' => 'tasks#destroy'
  # patch '/tasks/:id' => 'tasks#update'
  #update shoudl work for completed and edit form_for tied to active record model...
  #have them both submit the same params... or something...
  patch '/tasks/:id' => 'tasks#update_edit'
  ###work on this
  get '/people' => 'people#index', as: 'people'
  get '/people/:id' => 'people#show', as: 'person'
end
