class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password_digest, presence: true
  validates :password_digest, uniquness: true
  has_many :warranties
  has_many :photos, through: :warranties

end
