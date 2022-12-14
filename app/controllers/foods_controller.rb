class FoodsController < ApplicationController
  def index
    foods = Food.all
    render json: foods.as_json
  end

  def show
    food = Food.find_by(id: params[:id])
    render json: food.as_json
  end

  def create
    food = Food.new
    food.name = params[:name]
    food.price = params[:price]
    food.save
    render json: food.as_json
  end

  def update
    food = Food.find_by(id: params[:id])
    food.name = params[:name] || food.name
    food.price = params[:price] || food.price
    food.save
    render json: food.as_json
  end

  def destroy
    food = Food.find_by(id: params[:id])
    food.destroy
    render json: {message: "Food destroyed"}
  end
end
