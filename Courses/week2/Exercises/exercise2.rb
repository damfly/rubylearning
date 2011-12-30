=begin
  * Name: exercise2.rb
  * Description : discussion on method
  * Author: Damien HOULLE
  * Date: 28/12/2012
=end



#def mtdarry
#  10.times do |num|
#    puts num
#  end
#end
 
#mtdarry #=> O à 9

puts

def mtdarry
  10.times do |num|
    puts "#{num}a"
  end
end

puts mtdarry.class
#puts mtdarry.next #=> 0 à 10

a = [ 1, 2, 3 ].each
puts a
puts a.next

