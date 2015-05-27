class Family < ActiveRecord::Base
  has_many :parents, dependent: :destroy
  has_many :children, dependent: :destroy
  before_save { self.email = email.downcase }
  validates :familyname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: {case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end