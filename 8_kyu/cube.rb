# https://www.codewars.com/kata/playing-with-cubes-ii
class Cube
  # This cube needs help
	# Define a constructor which takes one integer, or handles no args
  def initialize(side = 0)
    @_side = side
  end

  def get_side()
    return @_side
  end

  def set_side(new_side)
    @_side = new_side.abs
  end
end

c = Cube.new(10)
c.set_side(3)
c.get_side
#
# c = Cube.new()
# c.get_side
