=begin
  * Name: prompt.rb
  * Description : process a line
  * Author: Damien HOULLE
  * Date: 28/12/2012
=end

def prompt (text)
  puts text
  STDOUT.sync = true
  gets.chomp
end
