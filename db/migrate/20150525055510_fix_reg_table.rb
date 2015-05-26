class FixRegTable < ActiveRecord::Migration
  def change
    add_column :regs, :firstalt, :string
    add_column :regs, :secondalt, :string
    add_column :regs, :thirdalt, :string
    rename_column :regs, :firsthour, :firstpri
    rename_column :regs, :secondhour, :secondpri
    rename_column :regs, :thirdhour, :thirdpri
  end
end
