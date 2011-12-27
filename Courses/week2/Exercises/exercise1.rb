=begin
  * Name: exercise1.rb
  * Description : process a line
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time,
#using all that we have learned so far. The expected output is:

#c:>> ruby tmp.rb
#Line 1: Welcome to the forum.
#Line 2: Here you can learn Ruby.
#Line 3: Along with other members.

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

lines =  s.split(/\n/)
lines.each_with_index {|sentence, index| puts "Line #{index + 1}: #{sentence}"}


