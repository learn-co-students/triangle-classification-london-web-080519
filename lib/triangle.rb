class Triangle
  # write code here
  def initialize(side1length, side2length, side3length)
    @side1length = side1length
    @side2length = side2length
    @side3length = side3length
  end

  attr_reader :side1length, :side2length, :side3length

  def kind
    if side1length <= 0 || side2length <= 0 || side3length <= 0 || side1length + side2length <= side3length || side2length + side3length <= side1length || side1length + side3length <= side2length
      begin
        raise TriangleError
      end
    elsif side1length == side2length && side2length == side3length
      :equilateral
    elsif side1length == side2length || side2length == side3length || side3length == side1length
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
