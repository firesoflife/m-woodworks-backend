class GalleriesController < ApplicationController
  skip_before_action :authenticate_request

   # GET /projects
   def index
    @projects = Project.all
    render json: @projects, status: :ok
  end

# GET /project/{project}

  def show
    render json: @project, status: :ok
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      render json: @gallery, status: :created
    else
      render json: { errors: @gallery.errors.full_messages },
             status: :unprocessable_entity
    end
  end


  def gallery_params
    params.permit(:image_url, :cover_image_url)
  end

end
