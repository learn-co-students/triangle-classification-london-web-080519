class Triangle
  # write code here

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    check_duplicates = [side1, side2, side3].uniq.length
    check_total_sides1 = side1 + side2 <= side3
    check_total_sides2 = side1 + side3 <= side2
    check_total_sides3 = side2 + side3 <= side1
    check_negative_or_zero = [side1, side2, side3].any?{|element| element <= 0}

    if check_total_sides1 || check_total_sides2 || check_total_sides3 || check_negative_or_zero
      raise TriangleError
    elsif check_duplicates == 1
      :equilateral
    elsif check_duplicates == 2
      :isosceles
    elsif check_duplicates == 3
      :scalene
    end

  end
  
  class TriangleError < StandardError
    def message
      "test"
    end
  end

end
