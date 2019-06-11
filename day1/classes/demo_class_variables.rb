class Critter

  # Runs once on the class when program starts
  @@count = 0

  # Defines a class function
  # Critter.live_critter_count
  def self.live_critter_count
    @@count
  end

  def initialize
    # Modify class variable
    @@count += 1
  end

  def squak
    puts "Squak! #{@@count}"
  end
end

c = Critter.new
d = Critter.new
e = Critter.new

c.squak
c.squak
c.squak
d.squak

puts Critter.live_critter_count