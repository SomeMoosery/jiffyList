class CategoriesController < ApplicationController

  def index
    @categories = Category.all #variable to call on in html file. Finds all of the Categories
    @community = @categories[0] #finds all of those cateogires, and picks out the first element (based on seeds.rb)
    @housing = @categories[1]
    @jobs = @categories[2]
    @personals = @categories[3]
    @services = @categories[4]
    @for_sale = @categories[5]
  end
end
