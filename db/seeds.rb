# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'rest-client'
require 'json'

auth = {"Authorization": "Bearer
BQDygIEKNMOOR5w-paBvp-p74pQcMUHamiTafT9jDkTjTHxzNi9cx_MsgP1IkK34aLfgfqIRpQqWpGP
63N6WGmgiY--I1Qaj6JTYXSwPras7ELuzXwHVq58v8eHbYwafteUVFwWDQya6B6uSWDf90YnNI8942LM
NpJ4Jf4S0-R8Pjee1OX23ufkXRYZjlb8"}

endpoint1 = RestClient.get(

"https://api.spotify.com/v1/browse/categories/mood/playlists?offset=0&limit=50",

headers=auth)

data1 = JSON.parse(endpoint1)
