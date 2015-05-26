class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string   :firstname
      t.string   :lastname
      t.string   :relation
      t.string   :age
      t.string   :grade
      t.string   :gender
      t.text     :allergies
      t.string   :email
      t.string   :phone
      t.string   :active
      t.string   :involvement
      t.string   :picture
      t.timestamps
    end
  end
end
