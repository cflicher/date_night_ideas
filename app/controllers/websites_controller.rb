class WebsitesController < ApplicationController
  def index
    @q = Website.ransack(params[:q])
    @websites = @q.result(:distinct => true).includes(:date).page(params[:page]).per(10)

    render("websites/index.html.erb")
  end

  def show
    @website = Website.find(params[:id])

    render("websites/show.html.erb")
  end

  def new
    @website = Website.new

    render("websites/new.html.erb")
  end

  def create
    @website = Website.new

    @website.date_id = params[:date_id]
    @website.url = params[:url]

    save_status = @website.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/websites/new", "/create_website"
        redirect_to("/websites")
      else
        redirect_back(:fallback_location => "/", :notice => "Website created successfully.")
      end
    else
      render("websites/new.html.erb")
    end
  end

  def edit
    @website = Website.find(params[:id])

    render("websites/edit.html.erb")
  end

  def update
    @website = Website.find(params[:id])

    @website.date_id = params[:date_id]
    @website.url = params[:url]

    save_status = @website.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/websites/#{@website.id}/edit", "/update_website"
        redirect_to("/websites/#{@website.id}", :notice => "Website updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Website updated successfully.")
      end
    else
      render("websites/edit.html.erb")
    end
  end

  def destroy
    @website = Website.find(params[:id])

    @website.destroy

    if URI(request.referer).path == "/websites/#{@website.id}"
      redirect_to("/", :notice => "Website deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Website deleted.")
    end
  end
end
