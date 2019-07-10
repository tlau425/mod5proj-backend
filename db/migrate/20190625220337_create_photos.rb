class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :picture, :default => "https://t3.ftcdn.net/jpg/02/03/77/10/500_F_203771054_ZCH2MokNqs3BX5RXyoHzFJR1ERhUMjxm.jpg"
      t.integer :warranty_id
      t.timestamps
    end
  end
end
