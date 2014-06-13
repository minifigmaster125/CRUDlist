class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @project = current_user.projects.new(project_params)

    if (@project.save)
      redirect_to user_projects_path
    else
      redirect_to user_projects_path
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.where(user_id: current_user.id)
  end

  def edit
    @project = Project.find(params[:id])
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  def update
    @project = Project.find(params[:id])

    if(@project.update(project_params))
      respond_to do |format|
        format.html {}
        format.js {}
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if(@project.destroy)
      redirect_to user_projects_path
    end

  end


  private
    def project_params
      params.require(:project).permit(:title)
    end
end