Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "photos#index"
  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Website resource:
  # CREATE
  get "/websites/new", :controller => "websites", :action => "new"
  post "/create_website", :controller => "websites", :action => "create"

  # READ
  get "/websites", :controller => "websites", :action => "index"
  get "/websites/:id", :controller => "websites", :action => "show"

  # UPDATE
  get "/websites/:id/edit", :controller => "websites", :action => "edit"
  post "/update_website/:id", :controller => "websites", :action => "update"

  # DELETE
  get "/delete_website/:id", :controller => "websites", :action => "destroy"
  #------------------------------

  # Routes for the Helpful_rating resource:
  # CREATE
  get "/helpful_ratings/new", :controller => "helpful_ratings", :action => "new"
  post "/create_helpful_rating", :controller => "helpful_ratings", :action => "create"

  # READ
  get "/helpful_ratings", :controller => "helpful_ratings", :action => "index"
  get "/helpful_ratings/:id", :controller => "helpful_ratings", :action => "show"

  # UPDATE
  get "/helpful_ratings/:id/edit", :controller => "helpful_ratings", :action => "edit"
  post "/update_helpful_rating/:id", :controller => "helpful_ratings", :action => "update"

  # DELETE
  get "/delete_helpful_rating/:id", :controller => "helpful_ratings", :action => "destroy"
  #------------------------------

  # Routes for the Date_idea resource:
  # CREATE
  get "/date_ideas/new", :controller => "date_ideas", :action => "new"
  post "/create_date_idea", :controller => "date_ideas", :action => "create"

  # READ
  get "/date_ideas", :controller => "date_ideas", :action => "index"
  get "/date_ideas/:id", :controller => "date_ideas", :action => "show"

  # UPDATE
  get "/date_ideas/:id/edit", :controller => "date_ideas", :action => "edit"
  post "/update_date_idea/:id", :controller => "date_ideas", :action => "update"

  # DELETE
  get "/delete_date_idea/:id", :controller => "date_ideas", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
