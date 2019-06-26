class WarrantySerializer < ActiveModel::Serializer
  attributes :name, :category, :wrnty_days, :buy_date, :notes, :photo_id, :user_id
end
