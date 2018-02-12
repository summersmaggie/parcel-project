class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @shoebox_volume = @length * @width * @height
  end

  def cost_to_ship
    cost_factors = { "overnight" => 15, "two-day" => 10, "standard" => 5, "less than 3 pounds" => 0, "more than 3 pounds" => 2, "less than 1575 volume in inches" => 0, "greater than 1575 volume in inches" => 2 }




    @cost = 0

  end
end
