load 'coordinate.rb'
load 'ship.rb'
load 'player.rb'
load 'board.rb'

class Game
  attr_accessor :player, :computer, :current_player, :player_board, :computer_board

  def initialize
    @player = Player.new
    @computer = Player.new
    @current_player = @player
    @player_board = Board.new
    @computer_board = Board.new
  end

# Gets coordinate input
  def get_coordinate
    @xy = gets.strip
    @x = @xy[0].upcase
    @y = @xy[1].to_i
    @coordinate = @x + @y.to_s
  end

#Player selects ship locations
  def place_ship
    print "Time to place your ships! You will 4 ships total.\n"
    @temp_coordinates = Array.new
    @ship = Ship.new

    while @player.ship_count < 4
      puts "Place a [V]erticle or [H]orizontal ship? :"
      vh = gets.strip.upcase

      if vh == "H"
        puts "Enter the center coordinate for your ship :"
        get_coordinate()
        if horizontal_coordinates_available(@coordinate, @player_board)
          @temp_coordinates =  [@x+ ((@y-1).to_s), @coordinate, @x+ ((@y+1).to_s)]
        else
          print "That coordinate is taken, please select another coordinate. "
          place_ship()
        end

      elsif vh == "V"
        puts "Enter the center coordinate for your ship :"
        get_coordinate()
        if vertical_coordinates_available(@coordinate, @player_board)
          @temp_coordinates = [((@x.next).to_s)+ @y.to_s, @coordinate, (@x.chr.ord-1).chr + @y.to_s]
        else
          print "That coordinate is taken, please select another coordinate. "
          place_ship()
        end

      else
        puts "Not a valid option"
        place_ship()
      end

      @temp_coordinates.each do |coordinate|
        @player_board.coordinates.each do |space|
          if (space.xy == coordinate)
            space.has_ship = 1
            @ship.coordinates.push(space)
          end
        end
      end
      @player.add_ship(@ship)
      draw_board(@player_board)
      @player.ship_count += 1
    end
  end

  def draw_board(player)
    player = player
    count = 1
    print "Your Board:\n"
    print (" # ")
    for i in (1..8) do
      print(" " + i.to_s + " ")

    end
    print("\n")
    player.coordinates.each() do |coordinate|
      if coordinate.xy[1] == "1"
        print " " + coordinate.xy[0]

          if coordinate.has_ship == 1
            print "  o "
          else
            print "  _ "
          end
        count +=1

      elsif coordinate.xy[1] == "8"
        if coordinate.has_ship == 1
          print " o \n"
        else
          print(" _ \n")
        end

      else
        if coordinate.has_ship == 1
          print " o "
        else
          print(" _ ")
        end
      end
    end
  end


#selects computer ships
  def place_computer_ships
    @temp_computer_coordinates = Array.new
    @ship = Ship.new
    @temp_coord = @computer_board.coordinates.sample
    @x = @temp_coord.xy[0]
    @y = @temp_coord.xy[1].to_i
    @coordinate = @x + @y.to_s

    while @computer.ship_count < 4
      if (@computer.ship_count % 2 == 0) && (horizontal_coordinates_available(@coordinate, @computer_board))
        @temp_coordinates = [@x+ ((@y-1).to_s), @xy, @x+ ((@y+1).to_s)]
      elsif (@computer.ship_count % 2 == 1) && (vertical_coordinates_available(@coordinate, @computer_board))
        @temp_coordinates = [((@x.next).to_s)+ @y.to_s, @xy, (@x.chr.ord-1).chr + @y.to_s]
      else
        place_computer_ship()
      end

      @temp_coordinates.each do |coordinate|
        @computer_board.coordinates.each do |space|
          if (space.xy == coordinate)
            space.has_ship = 1
            @ship.coordinates.push(space)
          end
        end
      end
      @computer.add_ship(@ship)
      @computer.ship_count += 1
    end
  end

  #checks if coordinates are available horizontally
  def horizontal_coordinates_available(xy, board)
    @xy = xy
    check_coordinates = [@x+ ((@y-1).to_s), @xy, @x+ ((@y+1).to_s)]
    coordinates_available = 0

    check_coordinates.each do |coordinate|
      board.coordinates.each do |space|
        if (space.xy == coordinate) && (space.has_ship == 0)
          coordinates_available += 1
        end
      end
    end

    if coordinates_available == 3
      return true
    else
      return false
    end
  end


  #checks if coordinates are available vertically
  def vertical_coordinates_available(xy, board)
    @xy = xy
    check_coordinates= [((@x.next).to_s)+ @y.to_s, @xy, (@x.chr.ord-1).chr + @y.to_s]
    coordinates_available = 0

    check_coordinates.each do |coordinate|
      board.coordinates.each do |space|
        if (space.xy == coordinate) && (space.has_ship == 0)
          coordinates_available += 1
        end
      end
    end

    if coordinates_available == 3
      return true
    else
      return false
    end
  end
end
