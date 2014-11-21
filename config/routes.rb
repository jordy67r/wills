Rails.application.routes.draw do



  resources :property_details

  resources :charity_details

  resources :wills do
    resources :testator_details, only: [:new, :edit, :create, :update]
    resources :partner_details, only: [:new, :edit, :create, :update]
    resources :funerals, only: [:new, :edit, :create, :update]
    resources :executors, only: [:new, :edit, :create, :update]
    resources :administrations, only: [:new, :edit, :create, :update]
    resources :guardians, only: [:new, :edit, :create, :update]
    resources :cash_gifts, only: [:new, :edit, :create, :update] do
      collection { get :option }
    end
    resources :charitable_donations, only: [:new, :edit, :create, :update] do
      collection { get :option }
    end
    resources :properties, only: [:new, :edit, :create, :update] do
      collection { get :option }
    end
    resources :personal_gifts, only: [:new, :edit, :create, :update] do
      collection { get :option }
    end
    resources :residuaries, only: [:new, :edit, :create, :update]
    resources :residuary_details, only: [:new, :edit, :create, :update]
    resources :requests, only: [:new, :edit, :create, :update]
  end

  resources :general_details, only: [:new, :edit, :create, :update]
  resources :questions

  root 'static_pages#home'



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
