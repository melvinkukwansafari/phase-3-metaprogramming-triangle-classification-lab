class Triangle
  # write code here
  class TriangleError < StandardError; 
  
  end

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]

    if !valid?
      raise TriangleError.new("Invalid triangle sides")
    end
  end


  def kind
    if @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    @sides.all? { |side| side > 0 } && @sides.max < @sides.sum - @sides.max
  end

end
