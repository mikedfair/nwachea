class CreateSubject < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subjectname
      t.string :grade
      t.string :hour
      t.string :cost
      t.string :teacher
      t.text :description
    end
  end
end
