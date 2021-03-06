class Listing < ActiveRecord::Base
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [city, state, zipcode].join(', ')
  end

  def self.search(params)
    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where("title like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    listings = listings.near(params[:location], 20) if params[:location].present? #20 miles
    listings
  end
end
