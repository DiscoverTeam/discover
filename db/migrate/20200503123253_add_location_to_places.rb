class AddLocationToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :location_id, :integer
    add_foreign_key :places,
                    :locations,
                    column: :location_id
    add_index :places, :location_id
  end
end
