require 'open-uri'
require 'json'

json_object = JSON.load(open("https://api.bombbomb.com/v2/spec").read)

puts json_object['info']['version']