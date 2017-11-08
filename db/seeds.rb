# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#name based on community in schema.rb. where(...).first_or_create(...) means you only make this once even if run seed multiple times
#use rake db:seed to create / run all this, rails c to open console
#NOTE ALL MAIN CATEGORIES FOR BETTRLIST HOME PAGE
community_category = Category.where(name: 'community').first_or_create(name: 'community')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
services_category = Category.where(name: 'services').first_or_create(name: 'services')
for_sale_category = Category.where(name: 'for_sale').first_or_create(name: 'for_sale')

Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

Subcategory.where(name: 'housing swap', category_id: housing_category.id).first_or_create(name: 'housing swap', category_id: housing_category.id)

Subcategory.where(name: 'education', category_id: jobs_category.id).first_or_create(name: 'education', category_id: jobs_category.id)

Subcategory.where(name: 'strictly platonic', category_id: personals_category.id).first_or_create(name: 'strictly platonic', category_id: personals_category.id) 

Subcategory.where(name: 'legal', category_id: services_category.id).first_or_create(name: 'legal', category_id: services_category.id)

Subcategory.where(name: 'antiques', category_id: for_sale_category.id).first_or_create(name: 'antiques', category_id: for_sale_category.id)
