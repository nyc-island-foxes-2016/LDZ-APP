require 'open-uri'
require 'json'

module Findable

  def toilets_in_borough
    toilets = open("http://data.cityofnewyork.us/resource/hjae-yuav.json?borough=#{self.borough}")
    toilets_string = toilets.read
    toilets_parsed = JSON.parse(toilets_string).shuffle
  end

  def next_toilet(all_toilets)
     current_toilet = all_toilets.shift
  end

end