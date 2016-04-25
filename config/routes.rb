Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # set root routing
  root 'tasks#index'

  get '/tasks'          => 'tasks#index', as: 'tasks' # display a list of all tasks
  get '/tasks/new'      => 'tasks#new'  # return an HTML form for creating a new task
  post '/tasks'         => 'tasks#create' # create a new task
  get '/tasks/:id'      => 'tasks#show', as: 'show' # display a specific task
  get '/tasks/:id/edit' => 'tasks#edit', as: 'task' # return an HTML form for editing a task
  patch '/tasks/:id/edit'    => 'tasks#update' # update a specific task
  delete '/tasks/:id'   => 'tasks#delete', as: 'delete'  # delete a specific task

  get '/people' => 'people#index', as: 'people'
  get 'person/:id' => 'people#show', as: 'person'




  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
