class WarrantySerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :wrnty_days, :buy_date, :notes, :user_id, :expiration
end
