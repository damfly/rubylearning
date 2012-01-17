#Exercise2. Write a Rectangle class. I shall use your class as follows:

#r = Rectangle.new(23.45, 34.67)
#puts "Area is = #{r.area}"
#puts "Perimeter is = #{r.perimeter}"


class Rectangle
  attr_reader :perimeter, :area
  def initialize(base, height)
    @perimeter = 2 * (base + height)
    @area = base * height
  end

end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
