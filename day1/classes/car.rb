require './colorable'

class Car
  # Methods
  # Member fields
  # Class variables
  # Special methods
  attr_accessor :speed
  include Comparable
  include Colorable

  def <=>(other)
    @speed <=> other.speed
  end

  def initialize
    # c => self
    # member fields -> @
    @speed = 0
  end

  def drive
    puts "Vroom Vroom going at #{@speed} mph"
  end

  def stop
    @speed = 0
  end

  def go
    @speed = 50
  end
end

