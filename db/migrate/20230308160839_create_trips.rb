class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.string :address
      t.date :start_date
      t.date :end_date
      t.integer :category_id
      t.integer :deposit_pricing
      t.integer :double_pricing
      t.integer :single_pricing
      t.integer :max_participants
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
