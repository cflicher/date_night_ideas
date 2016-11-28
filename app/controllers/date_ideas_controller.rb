class DateIdeasController < ApplicationController
  def index
    @date_ideas = DateIdea.all

    render("date_ideas/index.html.erb")
  end

  def show
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
    @date_idea.name = params[:name]
    @date_idea.neighborhood_id = params[:neighborhood_id]
    @date_idea.website = params[:website]
    @date_idea.address = params[:address]
    @date_idea.cover_photo = params[:cover_photo]
    @date_idea.price_range = params[:price_range]
    @date_idea.description = params[:description]

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
    @date_idea.name = params[:name]
    @date_idea.neighborhood_id = params[:neighborhood_id]
    @date_idea.website = params[:website]
    @date_idea.address = params[:address]
    @date_idea.cover_photo = params[:cover_photo]
    @date_idea.price_range = params[:price_range]
    @date_idea.description = params[:description]

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
