module Colorable
  def pretty?
    @color == 'blue'
  end

  def color
    @color
  end

  def color=(val)
    @color = val
  end
end