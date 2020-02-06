class Triangle
  # write code here
  attr_accessor :side1, :side2 , :side3, :kind


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (side1 * side2 * side3) == 0 || (side1 + side2) <=side3  || (side2 + side3) <= side1 || (side3 + side1) <= side2
      begin
        raise TriangleError
        #  puts error.message
      #  rescue TriangleError => error
      #    puts error.message
      end


    elsif side1 == side2 && side1 == side3
      self.kind = :equilateral

    elsif side1 == side2 || side1 == side3 || side2 == side3
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    puts "not a triangle"
  end
end




class Triangle
  attr_accessor :one, :two, :three

    def initialize (one, two, three)
        @one = one
        @two = two
        @three = three
    end

    def kind
        illegal_triangle

        if one == two && one == three
            :equilateral
        elsif one == two || one == three || two == three
            :isosceles
        else
            :scalene
        end
    end

    def illegal_triangle
        if one <= 0 || two <= 0 || three <= 0
            begin
                raise TriangleError
            end
        elsif one == nil || two == nil || three == nil
            begin
                raise TriangleError
            end
        elsif one + two <= three || one + three <= two || three + two <= one
            begin
                raise TriangleError
            end
        end
    end
end

class TriangleError < StandardError

end
