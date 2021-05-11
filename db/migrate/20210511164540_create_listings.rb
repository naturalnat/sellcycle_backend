class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :imgsrc
      t.string :brand
      t.integer :year
      t.integer :size
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
