load 'coordinate.rb'

class Board
  attr_accessor :coordinates

  def initialize
    @coordinates = Array.new
    for letter in ("A".."H") do
      count = 1
      while count < 9
        new_coordinate = Coordinate.new(letter + (count.to_s))
        @coordinates.push(new_coordinate)
        count += 1
      end
    end
  end
end
