class ChangeDatatypeColumnsInReservation < ActiveRecord::Migration
  def change
    change_column :reserverations, :checkin, :date
    change_column :reserverations, :checkout, :date
  end
end
