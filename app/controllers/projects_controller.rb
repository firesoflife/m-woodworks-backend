class ProjectsController < ApplicationController
  skip_before_action :authenticate_request

    # GET /projects
    def index
      @projects = Gallery.all
      render json: @project, status: :ok
    end
  
  # GET /project/{project}
  
  def show
    render json: @project, status: :ok
  end
  # POST /project
  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project, status: :created
    else
      render json: { errors: @project.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
