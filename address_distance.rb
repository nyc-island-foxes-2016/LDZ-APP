require 'geocoder'

class AddressDistances

  def address_to_lat_long(address)
    address_info =  Geocoder.search(address << ", NY, NY")
    my_lat = address_info[0].data["geometry"]["location"]
    # my_long=my_location[0].data["geometry"]["location"]["lng"]
  end

  def distance_between(my_coords, address_coords)
    del_lat = my_coords["lat"] - address_coords["lat"]
    del_lng = my_coords["lng"] - address_coords["lng"]
    distance = Math.sqrt(del_lat**2 + del_lng**2)
  end

end

something = AddressDistances.new

my_address = "112 7th ave"

other_address = "160 100th St"

my_coo = something.address_to_lat_long(my_address)

other_coo = something.address_to_lat_long(other_address)

puts something.distance_between(my_coo, other_coo)
