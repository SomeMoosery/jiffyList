# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#name based on digital in schema.rb. where(...).first_or_create(...) means you only make this once even if run seed multiple times
#use rake db:seed to create / run all this, rails c to open console

Category.destroy_all

#NOTE ALL MAIN CATEGORIES FOR jiffylist HOME PAGE
digital_category = Category.where(name: 'digital').first_or_create(name: 'digital')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
writing_category = Category.where(name: 'writing').first_or_create(name: 'writing')
trade_category = Category.where(name: 'trade').first_or_create(name: 'trade')

Subcategory.where(name: 'iPhone Repair', category_id: digital_category.id).first_or_create(name: 'iPhone Repair', category_id: digital_category.id)
Subcategory.where(name: 'Samsung Galaxy Repair', category_id: digital_category.id).first_or_create(name: 'Samsung Galaxy Repair', category_id: digital_category.id)
Subcategory.where(name: 'Web Dev', category_id: digital_category.id).first_or_create(name: 'Web Dev', category_id: digital_category.id)

Subcategory.where(name: 'Furniture Moving', category_id: housing_category.id).first_or_create(name: 'Furniture Moving', category_id: housing_category.id)
Subcategory.where(name: 'Piano Tuning', category_id: housing_category.id).first_or_create(name: 'Piano Tuning', category_id: housing_category.id)
Subcategory.where(name: 'Appliance Repair', category_id: housing_category.id).first_or_create(name: 'Appliance Repair', category_id: housing_category.id)

Subcategory.where(name: 'Editorial', category_id: writing_category.id).first_or_create(name: 'Editorial', category_id: writing_category.id)
Subcategory.where(name: 'Blog Post', category_id: writing_category.id).first_or_create(name: 'Blog Post', category_id: writing_category.id)
Subcategory.where(name: 'Interview Documentation', category_id: writing_category.id).first_or_create(name: 'Interview Documentation', category_id: writing_category.id)

Subcategory.where(name: 'Welding', category_id: trade_category.id).first_or_create(name: 'Welding', category_id: trade_category.id)
Subcategory.where(name: 'Plumbing', category_id: trade_category.id).first_or_create(name: 'Plumbing', category_id: trade_category.id)
Subcategory.where(name: 'Wiring', category_id: trade_category.id).first_or_create(name: 'Wiring', category_id: trade_category.id)
