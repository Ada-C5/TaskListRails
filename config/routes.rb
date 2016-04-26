Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  root 'list#index'

  get '/list' => 'list#index'
  # post '/list' => 'list#create'
  get '/list/new' => 'list#new', as: 'tasks'
  post '/list/new' => 'list#create'

  get '/list/:id/edit' => 'list#edit'
  patch '/list/:id/' => 'list#update', as: 'editz'
  patch 'list/:id/complete' => 'list#complete', as: 'completez'
  patch 'list/:id/incomplete' => 'list#incomplete', as: 'incomplete'

  get '/list/:id' => 'list#show'

  get '/people' => 'people#index', as: 'peepz'
  get '/people/:id' => 'people#show'


  delete '/list/:id' => 'list#destroy', as: 'delete'

  # , as 'tasks'
  # # , as: 'task'
  # get '/new', to: 'list#new'
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
