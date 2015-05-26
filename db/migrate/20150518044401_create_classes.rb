class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :classname
      t.string :grade
      t.string :hour
      t.string :cost
      t.string :teacher
      t.text :description
    end
  end
end
