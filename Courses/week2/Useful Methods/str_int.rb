=begin
  * Name: str_int.rb
  * Description : useful ruby method str * int
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end
# The * instance method of class String, returns a new String containing int copies of the receiver

ruby_1 = "Ruby! "
ruby_3 = ruby_1 * 3

puts "#{ruby_1} => #{ruby_1.object_id}"
puts "#{ruby_3} => #{ruby_3.object_id}"
