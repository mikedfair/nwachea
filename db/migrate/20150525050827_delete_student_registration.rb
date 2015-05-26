class DeleteStudentRegistration < ActiveRecord::Migration
  def change
    drop_table :student_registrations
  end
end
