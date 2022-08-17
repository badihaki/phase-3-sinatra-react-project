class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "
      Use '/restaurants'
      or '/bartenders'
      or '/cocktails'
      to explore data
      " }.to_json
  end
  
  # Lets do Restaurant routes here
  get "/restaurants" do
    all_restaurants = Restaurant.all
    all_restaurants.to_json
  end

  get "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

  # Lets rock out bartender route here
  get "/bartenders" do
    all_bartenders = Bartender.all
    all_bartenders.to_json
  end

  get "/bartenders/:id" do
    bartender = Bartender.find(params[:id])
    bartender.to_json
  end

  post '/bartenders' do
    new_bartender = Bartender.create(name:params[:name], handle:params[:handle])
    new_bartender.to_json
  end

  # A bartender needs cocktails, so lets put those routes here
  get "/cocktails" do
    all_cocktails = Cocktail.all.order(:bartender_id)
    all_cocktails.to_json
  end

  get "/cocktails/:id" do
    cocktail = Cocktail.find(params[:id])
    cocktail.to_json
  end

end
