class Summer
  attr_accessor :val

  def initialize
    self.val = 0
  end

  def add(*numbers)
    self.val += numbers.sum
  end
end