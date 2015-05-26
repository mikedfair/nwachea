class DeleteStudentClassesAgain < ActiveRecord::Migration
  def change
        drop_table :student_classes
  end
end
