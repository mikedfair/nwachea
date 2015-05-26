class Child < ActiveRecord::Base
  belongs_to :family
  has_many :regs
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :age, presence: true
  validates :grade, presence: true
  validates :gender, presence: true
end