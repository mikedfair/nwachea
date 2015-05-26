class AddColumnToReg < ActiveRecord::Migration
  def change
     add_column :regs, :child_id, :integer
  end
end
