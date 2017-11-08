class Listing < ActiveRecord::Base
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true


end
