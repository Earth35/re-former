class User < ActiveRecord::Base
  # batch validations for presence and uniqueness
  validates_presence_of :username, :email, :password
  validates_uniqueness_of :username, :email
  
  # details
  validates :username, length: { in: 4..30 }
  validates :password, length: { in: 6..30 } # password not secure in this exercise
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
end
