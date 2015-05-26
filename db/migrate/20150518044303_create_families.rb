class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :familyname
      t.string :email
      t.string :picture
      t.timestamps
    end
  end
end
