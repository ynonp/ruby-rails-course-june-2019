class Polymer
  include Enumerable

  def initialize(str)
    @head = Unit.new
    @tail = @head
    str.chars.each { |c| self << c }
  end

  def units_count
    count
  end

  def collapse!
    i = @tail
    loop do
      if i.interacts?(i.next)
        i.explode!
        i = i.prev
        redo
      end

      i = i.next
      break if i.nil?
    end
  end

  def each
    i = @tail.next
    while i != nil
      yield i
      i = i.next
    end
  end

  def <<(letter)
    @head.next = Unit.new(letter, @head, nil)
    @head = @head.next
  end

  def to_s
    map {|unit| unit.val}.join
  end
end

class Unit
  attr_accessor :next, :val, :prev

  def initialize(val = '', prev_unit = nil, next_unit = nil)
    @val = val
    @prev = prev_unit
    @next = next_unit
  end

  def interacts?(other)
    return false if other.nil? || other.val == '' || val == ''

    (self.val.ord - other.val.ord).abs == 32
  end

  def explode!
    return unless interacts?(self.next)

    @prev.next = self&.next&.next
  end

  def next=(other)
    @next = other
    other.prev = self unless other.nil?
  end
end

p = Polymer.new(File.read('polymer.txt'))
p.collapse!
puts p.units_count
