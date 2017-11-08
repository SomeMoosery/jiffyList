class FixSucategoryInListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :subcategroy_id
    add_column :listings, :subcategory_id, :integer
  end
end
