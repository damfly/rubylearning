=begin
  * Name: exercise2.rb
  * Description : use formatting
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Assignement :
#Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. 
#This method should return the temperature in degrees Celsius. 
#To format the output to say 2 decimal places, we can use the Kernel's format method. 
#For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. 
#Another way is to use the round function as follows: puts (x*100).round/100.0
#

def convert(degree_fahrenheit)
 
  degree_celius = (degree_fahrenheit - 32)/1.8

end

#get the input in dregree fahrenheit
STDOUT.flush
degree_fahrenheit = gets.to_f
puts  "#{degree_fahrenheit} degree fahrenheit is %.2f degree celsius" % convert(degree_fahrenheit)
