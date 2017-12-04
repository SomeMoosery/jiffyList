class CategoriesController < ApplicationController

  def index
    @categories = Category.all #variable to call on in html file. Finds all of the Categories
    @digital = @categories[0] #finds all of those categories, and picks out the first element (based on seeds.rb)
    @housing = @categories[1]
    @writing = @categories[2]
    @trade = @categories[3]
  end

  def show
    @listings = Listing.where(category_id: params[:id])
  end

end
