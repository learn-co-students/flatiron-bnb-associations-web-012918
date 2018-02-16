class RenameReservationColumns < ActiveRecord::Migration

  rename_column :reservations, :checkin_time, :checkin
  rename_column :reservations, :checkout_time, :checkout
end
