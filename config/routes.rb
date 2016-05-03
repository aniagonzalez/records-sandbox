Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'home#index'
  ## SAME AS:
  # get "/" => "home#index"

  # get "/rosa" => "home#rosa" # put rosa before /:name so it matches it before
  # get "/:name" => "home#index"
  root 'albums#index'

  resources :users, :only => [:new, :create]
  
  get '/albums' => 'albums#index', as: 'albums'  #Naming the route as 'albums'

  # get '/:artist' => 'albums#by_artist'

  ### TO ADD NEW TASK ###
  get '/albums/new' => 'albums#new'
  post '/albums' => 'albums#create' # could I post to /albums/new? maybe confirm added album?

  get '/albums/:id' => 'albums#show', as: 'album'

  # delete '/albums/:id' => 'albums#destroy'
  #
  # get '/albums/:id/edit' => 'albums#edit'
  # patch '/albums/:id' => 'albums#update'
  #
  # get '/albums/by_year/:year'

  ########################


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
