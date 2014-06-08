class AddCrudToModels < ActiveRecord::Migration
  def change
    add_column :models, :CRUDcreate, :integer
    add_column :models, :CRUDupdate, :integer
    add_column :models, :CRUDread, :integer
    add_column :models, :CRUDdestroy, :integer
  end
end
