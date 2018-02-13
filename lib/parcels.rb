class Parcel
  def initialize(time, length, width, height, weight)
    @time = time
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    volume = @length * @width * @height
    if volume < 3
      @volume_cost = 0
    elsif volume >= 3
      @volume_cost = 2
    end
  end

  def cost_to_ship
    result = @time + @weight
  end
end
