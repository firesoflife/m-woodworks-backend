class ProjectsController < ApplicationController
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
end
