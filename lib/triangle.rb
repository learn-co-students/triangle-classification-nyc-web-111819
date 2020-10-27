class Triangle

  attr_reader :length_a, :length_b, :length_c
  
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

  def kind
    if @length_a <= 0 || @length_b <= 0|| @length_c <= 0
      raise TriangleError
    elsif @length_a + @length_b <= @length_c || @length_b + @length_c <= @length_a || @length_c + @length_a <= @length_b
      raise TriangleError
    end

    if @length_a == @length_b && @length_b == @length_c && @length_c == @length_a
      return :equilateral
    elsif @length_b == @length_c || @length_a == @length_c || @length_a == @length_b
      return :isosceles
    else
      return :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "Triangle is invalid"
    end
  end

end
