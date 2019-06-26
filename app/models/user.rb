class User < ApplicationRecord
  has_secure_password
  has_many :warranties
  has_many :photos, through: :warranties

end
