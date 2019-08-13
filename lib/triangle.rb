class Triangle
  attr_reader :a, :b, :c

  @@all = []

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    @@all << self
  end

  def self.all
    @@all
  end

  def isvalid?
    a + b > c && c + b > a && a + c > b && a != 0 && b != 0 && c != 0
  end

  def kind
    if !self.isvalid?
      raise TriangleError
    else
      if a == b && a == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end
    
  end

  class TriangleError < StandardError

  end
end

