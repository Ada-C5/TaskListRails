Rails.application.routes.draw do
  get 'melissa/jimison'

  get 'melissa/quintero'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'tasks#index'
  get '/tasks' => 'tasks#index', as: 'tasks'


  post '/tasks' => 'tasks#create'
  get '/tasks/new' => 'tasks#new', as: 'new_task'

  get '/tasks/completed' => 'tasks#allcompleted', as: 'allcompleted'

  get '/tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id' => 'tasks#update'


  patch '/tasks/:id/completed' => 'tasks#completed', as: 'completed'

  patch '/tasks/:id/uncompleted' => 'tasks#uncompleted', as: 'uncompleted'

  #
  get '/tasks/:id' => 'tasks#show', as: 'task'
  delete '/tasks/:id' => 'tasks#destroy', as: 'destroy'

  # get '/people' => 'people#index', as: 'people'


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
