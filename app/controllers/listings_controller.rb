class ListingsController < ApplicationController

  def new
    @listing = Listing.new #calls on new method in listing model
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save!
    redirect_to @listing
  end

  def search
    @listings = Listing.search(params) #gets search method from model
  end

  def show
    @listing = Listing.find(params[:id]) #go into my listings model, and find the parameter that i'm passing into it!
  end

  def myListings
    
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
  end

end
