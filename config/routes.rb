Cis350::Application.routes.draw do
  get "therapist_log_out" => "therapist_sessions#destroy", :as => "therapist_log_out"
  get "therapist_log_in" => "therapist_sessions#new", :as => "therapist_log_in"
  get "patient_log_out" => "patient_sessions#destroy", :as => "patient_log_out"
  get "patient_log_in" => "patient_sessions#new", :as => "patient_log_in"
  get "patient_sign_up" => "patients#new", :as => "patient_sign_up"
  get "therapist_sign_up" => "therapists#new", :as => "therapist_sign_up"
  root :to => "therapists#new"
  resources :patients, :except => :index
  resources :therapists, :except => :index
  resources :patient_sessions, :except => :index
  resources :therapist_sessions, :except => :index
  match '/patients', :to => 'patients#new'
  match '/therapists', :to => 'therapists#new'
  match '/patient_sessions', :to => 'patient_sessions#new'
  match '/therapist_sessions', :to => 'therapist_sessions#new'



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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
