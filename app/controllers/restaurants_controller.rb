class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new 
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

private
  def restaurant_params
  end
  
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end