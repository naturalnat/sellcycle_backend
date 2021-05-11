class RemoveLocationFromListing < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :location, :string
  end
end
