require "http"
require "json"
require "dotenv/load"

# Write your soltuion here!
pp "Please input your location here:"

user_loc = "Chicago"

gmaps_key = ENV.fetch("GMAPS_KEY")

pp gmaps_key

gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{user_loc}&key=#{gmaps_key}"

raw_gmaps_url =  HTTP.get(gmaps_url)

parsed_gmaps_url = JSON.parse(raw_gmaps_url)

gmaps_results_array = parsed_gmaps_url.fetch("results")

pp gmaps_results_array

pirate_weather_key = ENV.fetch("PIRATE_WEATHER_KEY")

# pirate_weather_url = "https://api.pirateweather.net/forecast/#{pirate_weather_key}/41.8887,-87.6355"

# pp HTTP.get(gmaps_url)
