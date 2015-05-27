class AddAdminToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :admin, :boolean, default: false
  end
end
