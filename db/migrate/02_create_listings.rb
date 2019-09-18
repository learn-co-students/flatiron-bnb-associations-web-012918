class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :neighborhood_id
      t.string :address
      t.integer :host_id
      t.string :description
      t.float :price
      t.string :title
      t.string :listing_type
    end
  end
end
