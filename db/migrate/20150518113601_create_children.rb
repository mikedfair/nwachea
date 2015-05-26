class CreateChildren < ActiveRecord::Migration
  def change
    drop_table :members
    create_table :children do |t|
      t.string   :firstname
      t.string   :lastname
      t.string   :age
      t.string   :grade
      t.string   :gender
      t.text     :allergies
      t.timestamps
    end
  end
end
