board = []
spaces = ("a".."h").to_a
for letter in spaces do
  for i in (1..8) do
  board.push(letter.upcase + i.to_s)
  end
end

board = Array.new(8) {Array.new(8)}
spaces = ("A".."H").to_a

end

end

for letter in ("A".."H") do
  count = 1
  new_coordinate = Coordinate.new(letter + (count.to_s))
end


board = [
  "A1", "B1", "C1", "D1", "E1", "F1", "G1", "H1",
  "A2", "B2", "C2", "D2", "E2", "F2", "G2", "H2",
  "A3", "B3", "C3", "D3", "E3", "F3", "G3", "H3",
  "A4", "B4", "C4", "D4", "E4", "F4", "G4", "H4",
  "A5", "B5", "C5", "D5", "E5", "F5", "G5", "H5",
  "A6", "B6", "C6", "D6", "E6", "F6", "G6", "H6",
  "A7", "B7", "C7", "D7", "E7", "F7", "G7", "H7",
  "A8", "B8", "C8", "D8", "E8", "F8", "G8", "H8",
]

def draw_board(board)
  board.each() do |coordinate|
    if coordinate[0] == "H"
      print("_\n")
    else
      print("_")
    end
  end
end

def get_coordinate()
  print "Enter a coordinate :"
  @xy = gets.strip
  @x = @xy[0].upcase
  @y = @xy[1].to_i
  @coordinate = @x + @y.to_s
end

def place_ship
  print "Place a [V]erticle or [H]orizontal ship? "
  vh = gets.strip.upcase
  get_coordinate()
  ship = Ship.new

  if vh == "H"
    ship.coordinates =  [@x+ (@y-1.to_s), @xy, @x+ (@y-1.to_s)]
  else
    ship.coordinates = [((@x-1).to_s)+ @y, @coordinate, ((@x-1).to_s)+ @y]

  end
end

def place_ship
  print "Place a [V]erticle or [H]orizontal ship? "
  vh = gets.strip.upcase
  coordinate = get_coordinate()
  @ship = Ship.new

  if vh == "H"
    @ship.coordinates = [@x+ ((@y-1).to_s), @coordinate, @x+ ((@y-1).to_s)]

  else

  end
  @player.add_ship(ship)
end




@ship.coordinates.each do |coordinate|
  @player_board.coordinates.each_do |space|
    if space.xy = coordinate.xy && space.has_a_ship == true
      print "That coordinate is taken, please select another coordinate. "
      game.place_ship
    else
      space.has_ship = 1
    end
  end
end
@player.add_ship(@ship)


coordinate_1 = @x+ ((@y-1).to_s)
coordinate_2 = @coordinate
coordinate_3 = @x+ ((@y-1).to_s)
