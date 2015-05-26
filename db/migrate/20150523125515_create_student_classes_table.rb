class CreateStudentClassesTable < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.integer :child_id, :class_id
      t.timestamps
    end
  end
end
