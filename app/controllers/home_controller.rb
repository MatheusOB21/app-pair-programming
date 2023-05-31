class HomeController < ApplicationController

  def index
    response = Faraday.get('https://swapi.dev/api/planets?format=json')
    data = JSON.parse(response.body)
    @worlds = data["results"]
  end

end