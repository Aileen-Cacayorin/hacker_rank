class Coordinate
  attr_accessor :xy, :has_ship, :hit

   def initialize(xy)
     @xy = xy
     @has_ship = 0
     @hit = 0
    end

    # def has_a_ship
    #   if @has_ship == 0
    #     return false
    #   elsif has_ship == 1
    #     return true
    #   end
    # end
end
