class Subject < ActiveRecord::Base
  validates :subjectname, presence: true
  validates :grade, presence: true
  validates :hour, presence: true
  validates :cost, presence: true
  validates :teacher, presence: true
  validates :description, presence: true
  
end