class DeleteClassesTable < ActiveRecord::Migration
  def change
    drop_table :classes
  end
end
