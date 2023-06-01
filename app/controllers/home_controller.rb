class HomeController < ApplicationController

  def index
    response = Faraday.get('https://swapi.dev/api/people?format=json')
    data = JSON.parse(response.body)
    @worlds = data["results"]
    @residents = []
  end

end