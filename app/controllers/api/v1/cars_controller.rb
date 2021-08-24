class Api::V1::CarsController < ApplicationController

  def index
    @cars = Car.all
  end
  
end