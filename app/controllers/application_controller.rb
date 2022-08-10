class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
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

end
