class AddColumnsToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :address, :string
    add_column :places, :current_capacity, :integer
    add_column :places, :maximum_capacity, :integer
  end
end
