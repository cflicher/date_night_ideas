Rails.application.routes.draw do
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
