class WarrantySerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :wrnty_days, :buy_date, :notes, :photo_id, :user_id, :expiration
end
