class RemoveCrudFromModels < ActiveRecord::Migration
  def change
    remove_column :models, :create, :integer
    remove_column :models, :read, :integer
    remove_column :models, :update, :integer
    remove_column :models, :destroy, :integer
  end
end
