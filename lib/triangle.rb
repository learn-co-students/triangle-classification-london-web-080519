class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3
  end 

  def is_triangle?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side3 + @side1 > @side2 && @side1 != 0 && @side2 != 0 && @side3 != 0 
  end 

  def kind 
    if self.is_triangle? == false 
      raise TriangleError
    else 
      if @side1 == @side2 && @side2 == @side3 
        :equilateral 
      elsif
        @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles 
      else 
        :scalene
      end 
    end 
  end 

  class TriangleError < StandardError
  end

end

Triangle.new(300, 500, 600)
