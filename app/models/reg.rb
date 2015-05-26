class Reg < ActiveRecord::Base
  belongs_to :child
  validates :student, presence: true
  validates :firstpri, presence: true
  validates :secondpri, presence: true
  validates :thirdpri, presence: true
  validates :firstalt, presence: true
  validates :secondalt, presence: true
  validates :thirdalt, presence: true
end