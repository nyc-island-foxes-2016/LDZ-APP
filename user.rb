require_relative 'findable'

class User
  include Findable
  attr_reader :address
  attr_accessor :borough

  def initialize
    @address = ""
    @borough = ""
  end
end
