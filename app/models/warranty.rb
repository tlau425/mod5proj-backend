class Warranty < ApplicationRecord
  belongs_to :user
  has_many :photos

  def update_expiration
    Warranty.all.map{|warranty| warranty.expiration == nil ? warranty.expiration : warranty.sum}
  end
end
