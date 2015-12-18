require_relative 'findable'

class User
  include Findable
  attr_accessor :borough, :address

  def initialize
    @address = ""
    @borough = ""
  end
end
