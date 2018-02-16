class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :reservation_id
      t.integer :guest_id
      t.string :description
      t.integer :rating
      t.timestamps
    end
  end
end
