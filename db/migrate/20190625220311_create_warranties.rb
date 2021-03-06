class CreateWarranties < ActiveRecord::Migration[5.2]
  def change
    create_table :warranties do |t|
      t.string :name
      t.string :category
      t.integer :wrnty_days
      t.date :buy_date
      t.text :notes
      t.integer :photo_id
      t.integer :user_id

      t.timestamps
    end
  end
end
