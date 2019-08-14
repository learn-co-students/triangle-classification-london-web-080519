class Triangle
attr_accessor :length1,:length2,:length3 
def initialize(length1,length2,length3)
  @length1 = length1
  @length2 = length2
  @length3 = length3 
end 

def is_a_true_triangle?
  is_a_true_triangle = [(length1 + @length2 > @length3), (@length1 + @length3 > @length2), (@length2+ @length3 > @length1)]
  [length1,length2,length3].each do |side|
    is_a_true_triangle << false if side <= 0 
  raise TriangleError if is_a_true_triangle.include?(false)
  end
end

def kind 
  is_a_true_triangle?
if @length1 == @length2 && @length2 == @length3 
  kind = :equilateral
elsif @length1 == @length2 && @length2 != @length3 || @length1 != @length2 && @length2 == @length3 || @length1 == @length3 && @length1 !=@length2
  kind = :isosceles
elsif @length1 != @length2 && @length2 != @length3 && @length1 !=@length3 
  kind = :scalene
end 
end 
class TriangleError < StandardError
  def message 
    "Not a triangle!"
  end 
  end

end


