class User < ApplicationRecord

  before_save { self.email = self.email.downcase }

  has_many :articles

  validates :username, presence: true, length: {
      minimum:5, maximum: 50
  }, uniqueness: { case_sensitive: false}

  validates :email, presence: true, length: {
      maximum: 50, minimum: 10
  }, uniqueness: {case_sensitive: false}

  has_secure_password
end
