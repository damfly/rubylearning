=begin
  * Name: prompt.rb
  * Description : process a line
  * Author: Damien HOULLE
  * Date: 28/12/2012
=end

def prompt (text)
  STDOUT.flush
  puts text
  user_input = gets.chomp
end
