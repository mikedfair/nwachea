class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string   :firstname
      t.string   :lastname
      t.string   :phone
      t.string   :active
      t.string   :involvement
      t.string   :picture
      t.timestamps
    end
  end
end
