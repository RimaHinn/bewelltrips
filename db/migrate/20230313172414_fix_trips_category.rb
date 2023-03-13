class FixTripsCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :trips, :category, :categories
    change_column :trips, :categories, :string, array: true, default: [], using: "(string_to_array(categories, ','))"
  end
end
