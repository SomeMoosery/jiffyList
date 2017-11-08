class AddCategorySubcategoryToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :category_id, :integer
    add_column :listings, :subcategroy_id, :integer
  end
end
