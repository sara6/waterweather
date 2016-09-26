class HomeController < ApplicationController

require 'json'

require 'open-uri'


  def index
    @json = ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/free/v1/weather.ashx?q=london&format=json&num_of_days=5&key=xkq544hkar4m69qujdgujn7w').read)
  end

  def marine_json
    @json1=ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/free/v1/marine.ashx?q=45%2C-2&format=json&key=xkq544hkar4m69qujdgujn7w').read)
  end

  def search_json
      @json_search = ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/free/v1/search.ashx?q=London&format=json&key=xkq544hkar4m69qujdgujn7w').read)
  end

end
