class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.integer :host_id
      t.string :description
      t.float :price
      t.integer :neighborhood_id
    end
  end
end
