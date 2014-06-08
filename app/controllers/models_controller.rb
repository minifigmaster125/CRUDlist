class ModelsController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
    @project = Project.find(params[:project_id])
    @model = @project.models.new(model_params)

    @model.CRUDcreate = 0
    @model.CRUDread = 0
    @model.CRUDupdate = 0
    @model.CRUDdestroy = 0

    if(@model.save!)
      redirect_to user_project_path(current_user, @project)
    else
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private
    def model_params
      params.require(:model).permit(:name)
    end
end
