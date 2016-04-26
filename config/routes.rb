Rails.application.routes.draw do
  get 'people/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root  "tasks#index"
  # these are instructions: what type of request did I get => what am i going to do with it
  # when rails recieves a request it follows this path:
  # a request its recieving as a method (get, post, put, delete) and a path ('/')
  get    "tasks/new"              => "tasks#new"
  post   "/tasks"                 => "tasks#create", as: "tasks" #naming the route as task

  delete "tasks/:id"              => "tasks#destroy"

  get    "tasks/:id"              => "tasks#show" # home refers to a controller. by_task refers to a method on that object

  get    "tasks/:id/edit"         => "tasks#edit", as: "task"
  patch  "/tasks/:id/edit"        => "tasks#update"

  patch  "tasks/:id/complete"     => "tasks#complete"

  get "/people"                   => "people#index"

  get "people/:id"                => "people#show"

  get "people/:id/all_tasks"       => "people#all_tasks"




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
