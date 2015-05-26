class AddFamilyIdToParentAndChild < ActiveRecord::Migration
  def change
    add_column :parents, :family_id, :integer
    add_column :children, :family_id, :integer
  end
end
