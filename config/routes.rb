Ccc::Application.routes.draw do
  get "services" => "page#services"
  get 'contact' => 'page#contact'
  get 'cooling-towers' => 'page#whatarecoolingtowers', :as => :coolingtower
  get 'dry-cooling-towers' => 'page#drycoolingtowers', :as => :drycoolingtower
  get 'wet-cooling-towers' => 'page#wetcoolingtowers', :as => :wetcoolingtower
  get 'hybrid-cooling-towers' => 'page#hybridcoolingtowers', :as => :hybridcoolingtower
  get 'refrigeration-condenser-coils-evaporator' => 'page#refrigeration', :as => :refrigeration
  get 'heat-exchanging-tubes' => 'page#heatexchange', :as => :heatexchange
  get 'chiller-tubes' => 'page#chillertubes', :as => :chiller
  get 'boiler-tubes' => 'page#boilertubes', :as => :boiler
  get 'legionnaires-disease' => 'page#legionnairs', :as => :legion
  get 'legionnaires-disease-contracted' => 'page#legioncontract', :as=>:legioncontract
  get '2005-toronto-outbreak' => 'page#toronto', :as=>:toronto
  get '2011-playboy-mansion-outbreak' => 'page#playboy' , :as=>:playboy
  get '2012-quebec-city-outbreak' => 'page#quebec', :as=>:quebec
  get 'quebec-mandate' => 'page#quebecmandate', :as=>:quebecmandate
  get 'hamilton-by-law' => 'page#hamilton', :as => :hamilton
  get 'ontario' => 'page#ontario', :as=>:ontario

  resources :inquiries, :only => [:new, :create] do
    get 'thank_you', :on => :collection
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'page#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
