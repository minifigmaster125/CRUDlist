class AddProjectIdToModels < ActiveRecord::Migration
  def change
    add_column :models, :project_id, :integer
  end
end
