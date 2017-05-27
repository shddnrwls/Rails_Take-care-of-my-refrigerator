require 'nokogiri'
require 'rest_client'   # get & post
require 'open-uri'      # get

class FoodController < ApplicationController
  def index
  end
  def edit
    @food = Food.find(params[:food_id])
    @uri = @food.content
    @result = Nokogiri::HTML(open(@uri))
  end
  
end
