class DateIdeasController < ApplicationController
  before_action :current_user_must_be_date_idea_user, :only => [:show, :edit, :update, :destroy]

  def current_user_must_be_date_idea_user
    date_idea = DateIdea.find(params[:id])

    unless current_user == date_idea.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = DateIdea.ransack(params[:q])
    @date_ideas = @q.result(:distinct => true).includes(:user, :reviews, :websites, :venues, :users).page(params[:page]).per(10)

    render("date_ideas/index.html.erb")
  end

  def show
    @venue = Venue.new
    @website = Website.new
    @review = Review.new
    @date_idea = DateIdea.find(params[:id])

    render("date_ideas/show.html.erb")
  end

  def new
    @date_idea = DateIdea.new

    render("date_ideas/new.html.erb")
  end

  def create
    @date_idea = DateIdea.new

    @date_idea.user_id = params[:user_id]
    @date_idea.date_name = params[:date_name]
    @date_idea.cover_photo = params[:cover_photo]
    @date_idea.price_category = params[:price_category]
    @date_idea.date_description = params[:date_description]

    save_status = @date_idea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/date_ideas/new", "/create_date_idea"
        redirect_to("/date_ideas")
      else
        redirect_back(:fallback_location => "/", :notice => "Date idea created successfully.")
      end
    else
      render("date_ideas/new.html.erb")
    end
  end

  def edit
    @date_idea = DateIdea.find(params[:id])

    render("date_ideas/edit.html.erb")
  end

  def update
    @date_idea = DateIdea.find(params[:id])

    @date_idea.user_id = params[:user_id]
    @date_idea.date_name = params[:date_name]
    @date_idea.cover_photo = params[:cover_photo]
    @date_idea.price_category = params[:price_category]
    @date_idea.date_description = params[:date_description]

    save_status = @date_idea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/date_ideas/#{@date_idea.id}/edit", "/update_date_idea"
        redirect_to("/date_ideas/#{@date_idea.id}", :notice => "Date idea updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Date idea updated successfully.")
      end
    else
      render("date_ideas/edit.html.erb")
    end
  end

  def destroy
    @date_idea = DateIdea.find(params[:id])

    @date_idea.destroy

    if URI(request.referer).path == "/date_ideas/#{@date_idea.id}"
      redirect_to("/", :notice => "Date idea deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Date idea deleted.")
    end
  end
end
