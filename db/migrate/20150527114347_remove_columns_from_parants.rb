class RemoveColumnsFromParants < ActiveRecord::Migration
  def change
    add_column :families, :typemember, :string
    add_column :families, :active, :boolean, default: false
    remove_column :parents, :active
    remove_column :parents, :involvement
  end
end
