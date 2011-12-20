Sms::Application.routes.draw do
  
	#devise_for :admins

  #devise_for :users
  devise_for :users, :controllers => { :registrations => "user/registrations" }
	
	namespace "user" do
		resources :address, :country
	end
	
	namespace "institution" do
		resources :institutes, :institution_groups
	end
		
	namespace "user" do 
		resources :roles do 
			get 'user_roles'
		end
	end

	namespace "user" do 
		resources :user_roles_map do 
			get 'user_roles'
		end
	end
	
	
	namespace "menu" do
		resources :groups, :container
	end

  namespace :menu do 
    resources :mappings do 
      collection do
        get 'menu_group_menu_containers'
        get 'menu_container_menu_groups'
      end
    end 
  end
  
	namespace :menu do 
		resources :links do 
			collection do
				get 'load_links'
			end
		end	
	end

	namespace :menu do 
		resources :modules do 
			collection do
				get 'load_modules'
			end
		end	
	end
	
  
  namespace "hostel" do
		#resources :modules, :links, :groups, :container, :menu_groups_menu_links
	end

  namespace "library" do
		#resources :modules, :links, :groups, :container, :menu_groups_menu_links
	end

  namespace "report" do
		#resources :modules, :links, :groups, :container, :menu_groups_menu_links
	end

  namespace "bills" do
		#resources :modules, :links, :groups, :container, :menu_groups_menu_links
	end

  resources :home do
    collection do
      get 'login'
			get 'selectrole'
			get 'adminpage'
			get 'userpage'
        # post 'toggle'
   end
  
    #   collection do
    #     get 'sold'
    #   end
  end

  #root :to => "home#index"
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
  # root :to => "welcome#index"
	root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
