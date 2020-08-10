class Triangle

  attr_accessor :type
  attr_reader :side1_length, :side2_length, :side3_length

  def initialize(side1_length,side2_length,side3_length)
    @side1 = side1_length
    @side2 = side2_length
    @side3 = side3_length
    type = self.kind
  end

  def kind
    if @side2 == @side3 && @side1 != @side2
      self.type = :isosceles
    elsif @side1 == @side3 && @side1 != @side2
      self.type = :isosceles
    elsif @side1 == @side2 && @side1 != @side3
      self.type = :isosceles
    elsif @side1 == @side2 && @side1 == @side3
      self.type = :equilateral
    else
      raise TriangleError
    end
  end

  def TriangleError
  end
end
