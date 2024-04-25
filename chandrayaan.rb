class Chandrayaan
  def initialize(commands,starting_position,initial_direction)
    @commands = commands
    @x,@y,@z = starting_position
    @initial_direction = initial_direction
  end
  def spacecraft_navigation
    @commands.each do |command|
      find_next_coordinates(@x,@y,@z,@initial_direction,command)
    end
  end

  def self.find_next_coordinates(x,y,z,direction,operation)
    if direction == 'N'
      if operation == "f"
        y += 1
      elsif operation == 'b'
        y -= 1
      elsif operation == 'l'
        direction = 'W'
      elsif operation == 'r'
        direction = 'E'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end

    elsif direction == 'S'
      if operation == "f"
        y += 1
      elsif operation == 'b'
        y -= 1
      elsif operation == 'l'
        direction = 'E'
      elsif operation == 'r'
        direction = 'W'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end

    elsif direction == 'E'
      if operation == "f"
        x += 1
      elsif operation == 'b'
        x -= 1
      elsif operation == 'l'
        direction = 'N'
      elsif operation == 'r'
        direction = 'S'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end

    elsif direction == 'W'
      if operation == "f"
        x += 1
      elsif operation == 'b'
        x -= 1
      elsif operation == 'l'
        direction = 'S'
      elsif operation == 'r'
        direction = 'N'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
    end

    return x,y,z,direction
  end
end