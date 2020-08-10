class Triangle

  attr_reader :side1_length, :side2_length, :side3_length

  def initialize(side1_length,side2_length,side3_length)
    @side1 = side1_length
    @side2 = side2_length
    @side3 = side3_length
  end

  def kind
    if @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      self.type = "isosceles"
    elsif @side1 == @side2 && @side1 == @side3
      self.type = "equilateral"
    else
      raise TriangleError
    end
  end

  def TriangleError
  end
end
