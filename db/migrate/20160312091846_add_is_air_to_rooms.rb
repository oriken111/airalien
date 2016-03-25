class AddIsAirToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :is_air, :boolean
  end
end
