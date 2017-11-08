Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #NOTE USE rake routes TO SEE ALL ROUTES

  #Creates the CRUD actions for categories
  resources 'categories' do
    resources :subcategories #Creates CRUD actions for subcategories
  end

  root 'categories#index' #first page that we land on -- homepage

  #matching paths to pages controller
  match '/help', to: 'pages#help', via: :get
  match '/scams', to: 'pages#scams', via: :get
  match '/safety', to: 'pages#safety', via: :get
  match '/terms', to: 'pages#terms', via: :get
  match '/privacy', to: 'pages#privacy', via: :get
  match '/about', to: 'pages#about', via: :get
  match '/contact', to: 'pages#contact', via: :get
end
