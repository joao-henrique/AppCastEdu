Rails.application.routes.draw do

  # match 'auth/:provider/callback', to: 'login#create', via: [:get, :post]
  root 'login#index'

  get 'users/perfil/:id' => 'users#perfil', as: 'perfil'

  get 'room/:id/forum/new' => 'forums#new', as: 'forum'
  post 'room/:id/forum/create' =>'rooms#create_forum', as: 'create_forum'


  match 'auth/:provider/callback' => 'users#register', as: 'register', via: [:get, :post]

  get 'login/' => 'login#index'
  post 'users/profile' => 'login#makeLogin'

  resources :admins
  resources :contributors
  resources :comments
  resources :categories


  resources :users



  get  'users/login/:email'  => 'users#login', :constraints => { :email => /[^\/]+/ }
  post 'users/login/:email'  => 'users#login', :constraints => { :email => /[^\/]+/ }
  post 'password_reset/create' => 'password_reset#create'
  get  'password_reset/:key/edit'  => 'password_reset#edit', :constraints => { :email => /[^\/]+/ }
  patch  'password_reset/:key' => 'password_reset#update'

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
