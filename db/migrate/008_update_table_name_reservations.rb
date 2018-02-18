class UpdateTableNameReservations < ActiveRecord::Migration
  def change
    rename_table :reserverations,  :reservations
  end
end
