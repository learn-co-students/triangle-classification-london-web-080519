class Triangle
  attr_accessor :hyp, :opp, :adj

  def initialize(hyp, opp, adj)
    @hyp = hyp
    @opp = opp
    @adj = adj
  end

  def kind
    if @opp <= 0 || @adj <= 0 || @hyp <= 0
        raise TriangleError
    end

    if @opp + @adj <= @hyp || @adj + @hyp <= @opp || @hyp + @opp <= @adj
      raise TriangleError
    end

    # :equilateral #all three sides equal
    if @hyp == @adj && @hyp == @opp && @opp == @adj
      :equilateral
    # :scalene #no equal sides
    elsif @hyp != @adj && @hyp != @opp && @opp != @adj
      :scalene
    # :isosceles #two equal sides
    else
      :isosceles
    end

  end

  class TriangleError < StandardError
    # def message
    #   "This is not a valid triangle!"
    # end
  end

end
