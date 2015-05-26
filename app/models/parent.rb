class Parent < ActiveRecord::Base
  belongs_to :family
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phone, presence: true
end