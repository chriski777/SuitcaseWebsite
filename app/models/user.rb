class User < ApplicationRecord
	#checks if the name attribute is present
	#essentially all validations must be passed in order for a User instance to be valid.
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  #Disallow double dots in email names
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  				format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
