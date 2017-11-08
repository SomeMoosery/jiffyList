class ListingsController < ApplicationController

  def new
    @listing = Listing.new #calls on new method in listing model
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save!
    redirect_to root_path
  end

  def show
    @listing = Listing.find(params[:id]) #go into my listings model, and find the parameter that i'm passing into it!
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :zipcode)
  end

end
