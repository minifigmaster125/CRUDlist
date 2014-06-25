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

    if(@model.save)
      redirect_to user_project_path(current_user, @project)
    else
      @project.models.each do |m|
        puts m.name
      end

      render "projects/show"
    end
  end


  def edit
  end

  def update
    @model = Model.find(params[:id])
    if(@model.update(model_update_params))
      respond_to do |format|
        format.js {}
      end
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @model = @project.models.find(params[:id])
    if(@model.destroy)
      redirect_to user_project_path(current_user, @project)
    else
    end
  end

  private
    def model_params
      params.require(:model).permit(:name)
    end

    def model_update_params
      params.require(:model).permit(:name, :CRUDcreate, :CRUDread, :CRUDupdate, :CRUDdestroy)
    end
end
