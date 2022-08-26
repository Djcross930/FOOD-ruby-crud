class FoodsController < ApplicationController
  def index
    foods = Food.all
    render json: foods.as_json
  end
end
