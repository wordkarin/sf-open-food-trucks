require 'httparty'
require './food_truck'
require 'dotenv/load'

class APIWrapper

  BASE_URL = "https://data.sfgov.org/resource/bbb8-hzi6.json?"
  TOKEN = ENV["SF_TOKEN"]
  DAY_OF_WEEK = Date.today.wday

  def self.get_all_for_day_of_week

    url = BASE_URL + "&$$app_token=#{TOKEN}" + "&dayorder=#{DAY_OF_WEEK}"

    data = HTTParty.get(url)

    results = []
    if data != []
      data.each do |item|
        wrapper = FoodTruck.new( item["applicant"], item["location"], convert_time(item["start24"]), convert_time(item["end24"]))
        results << wrapper
      end
    else
      return []
    end
    return results
  end
end
