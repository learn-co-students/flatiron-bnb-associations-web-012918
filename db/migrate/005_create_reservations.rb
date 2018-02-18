class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reserverations do |t|
      t.string :checkin
      t.string :checkout
      t.integer :listing_id
      t.integer :guest_id
    end
  end
end
