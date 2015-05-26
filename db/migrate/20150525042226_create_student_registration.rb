class CreateStudentRegistration < ActiveRecord::Migration
  def change
    create_table :student_registrations do |t|      
      t.integer :child_id, :reg_id
    end
  end
end
