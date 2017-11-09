class SubcategoriesController < ApplicationController

  def show
    @listings = Listing.where(subcategory_id: params[:id])
  end

end
