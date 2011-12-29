=begin
  * Name: exercise2.rb
  * Description : discussion on method
  * Author: Damien HOULLE
  * Date: 28/12/2012
=end



def mtdarry
  10.times do |num|
    puts num
  end
end
 
mtdarry #=> O à 9lo

puts

def mtdarry
  10.times do |num|
    puts "#{num}a"
  end
end

puts [0,1,2,3,4,5,6,7,8,9]

puts mtdarry
puts mtdarry.next #=> 0 à 10

#a = [ 1, 2, 3 ].each
#puts a
#puts a.next

