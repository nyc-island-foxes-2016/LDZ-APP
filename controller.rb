require_relative 'view'
require_relative 'user'
require_relative 'address_distance'
require 'pry'

class Controller

  include AddressDistances
  include Findable

  def initialize
    @viewer = View.new
    @user = User.new
    @boroughs = ["Brooklyn", "Manhattan", "Queens", "Bronx", "Staten Island"]
    @decision = nil
    @closest_distance = nil
    @closest_toilet = ""
  end

  def start
    @viewer.picture
    @viewer.intro_message
    borough_input = @viewer.get_borough_input
    until @boroughs.include?(borough_input)
      @viewer.invalid_borough
      borough_input = @viewer.get_borough_input
    end
    @user.borough = borough_input
    user_toilet_options = @user.toilets_in_borough
    @viewer.request_address
    user_coords = get_coords(@viewer.get_input)
    user_toilet_options.each do |hash|
      current_distance = distance_between(user_coords, get_coords(hash["location"]))
      if @closest_distance == nil || current_distance < @closest_distance
        @closest_distance = current_distance
        @closest_toilet = hash
      end
      sleep(0.15)
    end
    @viewer.print_toilet(@closest_toilet)

    @viewer.end_message
  end

  def get_coords(user_address)
    address_to_lat_long(user_address)
  end


end

controller= Controller.new
controller.start


