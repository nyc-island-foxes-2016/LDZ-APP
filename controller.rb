require_relative 'view'
require_relative 'user'
require 'pry'

class Controller

  include Findable

  def initialize
    @viewer = View.new
    @user = User.new
    @boroughs = ["Brooklyn", "Manhattan", "Queens", "Bronx", "Staten Island"]
    @decision = nil
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
    until @decision == "yes"
      @viewer.print_toilet(next_toilet(user_toilet_options))
      @viewer.suffice?
      @decision = @viewer.get_input
      @viewer.option_response if @decision == "no"
    end
    @viewer.end_message
  end
end

controller= Controller.new
controller.start


