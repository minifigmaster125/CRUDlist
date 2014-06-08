class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :create
      t.integer :read
      t.integer :update
      t.integer :destroy

      t.timestamps
    end
  end
end
