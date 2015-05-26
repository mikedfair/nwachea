class RenameLessonId < ActiveRecord::Migration
  def change
    rename_column :student_classes, :lesson_id, :subject_id
  end
end
