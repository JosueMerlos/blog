Rails.application.routes.draw do


  devise_for :seguridad_usuarios, controllers: {
    sessions: 'seguridad_usuarios/sessions',
    registrations: 'seguridad_usuarios/registrations'
  }
  
  resources :categories
  resources :entradas
  resources :seguridad_usuarios
  
  get 'ver_entrada/index'
  get 'ver_entrada/index/:id' => 'ver_entrada#index'

  get 'practica_form_tag/index'
  get 'practica_render/index'
  get 'practica_render/index_dos'
  get 'practica_ruby/index'
  get 'practica_variables/index'

  
  get 'home/index'
  get 'home/parametro'

  get 'ayuda/index'
  get 'ayuda/editar'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  get 'home/parametro/:id' => 'home#parametro'
  get 'ayuda/pagina/:id' => 'ayuda#pagina'

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
