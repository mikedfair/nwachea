class CreateReg < ActiveRecord::Migration
  def change
    create_table :regs do |t|
      t.string :student
      t.string :firsthour
      t.string :secondhour
      t.string :thirdhour
    end
  end
end
