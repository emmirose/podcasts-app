
# install gem dotenv-rails
# add .env file to root directory
# create a varible with keys
# call it where I calll the API
# BASE_URL = 'https://api.spotify.com/v1/'

#REST CLIENT GEM
# byebug

# NET HTTP GEM
# require "uri"
# require "json"
# require "net/http"

# url = URI("https://api.spotify.com/v1/shows/6FmhbANzGT7BC4ltVPIbt5?market=FR")

# https = Net::HTTP.new(url.host, url.port)
# https.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["Accept"] = "application/json"
# request["Authorization"] = ENV['TOKEN']

# response = https.request(request).read_body
# hash = JSON.parse response
# print hash["description"]

response = RestClient.get('https://api.spotify.com/v1/search?query=economie&type=show&include_external=audio&market=FR&locale=fr-FR%2Cfr%3Bq%3D0.9%2Cen-US%3Bq%3D0.8%2Cen%3Bq%3D0.7&offset=0&limit=20',
{:Authorization => "Bearer #{ENV['TOKEN']}"} )
result = JSON.parse(response)

podcasts = result["shows"]["items"]

podcasts.each do |podcast|
  Podcast.create(:title => podcast["name"], :number_of_episodes => podcast["total_episodes"],
  :description => podcast["description"], :publisher => podcast["publisher"])
end
