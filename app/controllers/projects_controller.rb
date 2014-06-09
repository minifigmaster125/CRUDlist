class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @project = current_user.projects.new(project_params)

    if (@project.save!)
      redirect_to user_projects_path
    else
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.where(user_id: current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy

  end


  private
    def project_params
      params.require(:project).permit(:title)
    end
end
