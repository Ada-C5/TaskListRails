Rails.application.routes.draw do

    root 'tasks#index'


    get '/tasks'         => 'tasks#index', as: 'tasks' # go to slash ablums should execute index method
    post '/tasks'        => 'tasks#create' # route to the create method
    get '/tasks/new'     => 'tasks#new'
    get '/tasks/:id'     => 'tasks#show', as: 'task' #dynamic root, talking about individual album
    delete '/tasks/:id'  => 'tasks#destroy', as: 'delete'
    get 'tasks/:id/edit' => 'tasks#edit', as: 'edit'
    patch 'tasks/:id'    => 'tasks#update'
    patch 'tasks/:id/status'    => 'tasks#status', as: 'status'


    get '/people'         => 'people#index', as: 'people' # go to slash ablums should execute index method
    post '/people'        => 'people#create' # route to the create method
    get '/people/new'     => 'people#new'
    get '/people/:id'     => 'people#show' #dynamic root, talking about individual album
    delete '/people/:id'  => 'people#destroy'
    get 'people/:id/edit' => 'people#edit'
    patch 'people/:id'    => 'people#update'  #
  #
  # root 'tasks#index'
  #
  # # get '/create_task' => 'tasks#create_task', as: "create_task"
  # # get '/tasks' => 'tasks#index', as: 'tasks' # show all tasks
  #
  # get    '/tasks/:id/edit' => 'tasks#edit', as: 'edit'
  # post   '/tasks' => 'tasks#create'
  # patch  '/tasks/:id' => 'tasks#edit'
  #
  # # get '/tasks/:id/status' => 'tasks#status', as: 'status'
  # post   '/tasks' => 'tasks#status'
  #
  # delete '/tasks/:id/delete' => 'tasks#destroy', as: 'delete'
  #
  #
  # get    '/tasks/new' => 'tasks#new'
  # get    '/tasks/:id' => 'tasks#show', as: 'task' #dynamic root, talking about individual album
  #
  #
  # get 'person/index'
  # get '/persons/new' => 'tasks#new'
  # get "/:home" => "tasks#id"
  # get "/" => "home#index"
  # get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
