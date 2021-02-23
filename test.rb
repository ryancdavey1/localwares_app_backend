# include Geokit::Geocoders

# loc=Geocoder.geocode('100 Spear St, San Francisco, CA')
# if loc.success
#   puts loc.lat
#   puts loc.lng
#   puts loc.full_address
# end
require 'geocoder'

loc1 = Geocoder.coordinates("100 Spear St, San Francisco, CA 94105")
loc2 = Geocoder.coordinates("Golden Gate Bridge, San Francisco, CA")

puts loc1
puts loc2

res = Geocoder::Calculations.distance_between(loc1, loc2)
puts res

# general list of businesses nearby
#favorite bus
#favorite item
# add business => geocoder => 