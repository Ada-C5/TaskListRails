Rails.application.routes.draw do

  root   'tasklist#index'
# rails_task_list_index GET    /rails_task_list(.:format)          rails_task_list#index
#                       POST   /rails_task_list(.:format)          rails_task_list#create
#   new_rails_task_list GET    /rails_task_list/new(.:format)      rails_task_list#new
#  edit_rails_task_list GET    /rails_task_list/:id/edit(.:format) rails_task_list#edit
#       rails_task_list GET    /rails_task_list/:id(.:format)      rails_task_list#show
#                       PATCH  /rails_task_list/:id(.:format)      rails_task_list#update
#                       PUT    /rails_task_list/:id(.:format)      rails_task_list#update
#                       DELETE /rails_task_list/:id(.:format)      rails_task_list#destroy

  get    '/tasklist' => 'tasklist#index', as: 'rails_task_lists'
  get    '/tasklist/new' => 'tasklist#new', as: 'tasklist_new'
  post   '/tasklist' => 'tasklist#create'
  get    '/tasklist/:id' => 'tasklist#show', as: 'rails_task_list'
  get    '/tasklist/:id/edit' => 'tasklist#edit', as: 'edit_tasklist'
  put    '/tasklist/:id' => 'tasklist#update'
  patch  '/tasklist/:id/done' => 'tasklist#finished', as: "done_task_list"
  patch  '/tasklist/:id' => 'tasklist#update'
  delete '/tasklist/:id' => 'tasklist#delete', as: 'delete'






  # root "tasklist#index"
  # get '/tasklist' => 'tasklist#index', as: 'tasklists'
  # get '/tasklist/new' => 'tasklist#new'
  # post'/tasklist' => 'tasklist#create', as: 'rails_task_lists'
  # get '/:title' => 'tasklist#by_title'
  # get '/:id'=> 'tasklist#show'
  # delete '/tasklist/:id' => 'tasklist#delete'


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
