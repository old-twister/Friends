class AddPlaceWhereMet < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :where_met, :integer, null: false, default: 0
  end
end
