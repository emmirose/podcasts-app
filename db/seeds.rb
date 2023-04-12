
# install gem dotenv-rails
# add .env file to root directory
# create a varible with keys
# call it where I calll the API
# BASE_URL = 'https://api.spotify.com/v1/'

#REST CLIENT GEM

# auth = {'Authorization':
# 'Bearer BQCpdRKjjVrbbNx2rb9sxc_O2sorCjCrAWvAkNPeJ93T9NJpxgM--kZtzVNcTcbYdIKKXrz7
# -LaQ3cTwX6wTRM0-WoixTcHL_ivGTZfOTFqsx5VnGX3p'}

# response = RestClient.get('https://api.spotify.com/v1/shows/6FmhbANzGT7BC4ltVPIbt5',
# headers: auth)

# byebug

# NET HTTP GEM
require "uri"
require "json"
require "net/http"

url = URI("https://api.spotify.com/v1/shows/6FmhbANzGT7BC4ltVPIbt5?market=FR")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Accept"] = "application/json"
request["Authorization"] = ENV['TOKEN']

response = https.request(request).read_body
hash = JSON.parse response
print hash["description"]
byebug
