class RenameClassId < ActiveRecord::Migration
  def change
    rename_column :student_classes, :class_id, :lesson_id
  end
end
