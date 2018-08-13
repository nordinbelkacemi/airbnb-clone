class CreateKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchens do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :address
      t.integer :rating
      t.boolean :availability
      t.string :photo
      t.integer :capacity
      t.text :amenities

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
