class CreateReviewsTable < ActiveRecord::Migration

  def change
    create_table :reviews do |t|
      t.text :description
      t.float :rating
      t.integer :guest_id
      t.integer :reservation_id
      t.timestamps
    end
  end

end
