=begin
  * Name: exercise4.rb
  * Description : leap year detector
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Assignement:
#1 / Write a method leap_year?. It should accept a year value from the user, 
#check whether it's a leap year, and then return true or false. 
#2 / With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) 
# and the number of minutes in a non-leap year (1900 and 2005). 

# Note: a century year, like 1900 and 2000, is a leap year only if it is divisible by 400.


require_relative 'prompt'

#Definition of the method checking if a year is a leap year or not
def leap_year?(year)
  year.to_i % 400 == 0 || year.to_i % 4 == 0 && year.to_i % 100 != 0
end

def is_or_not (state) 
  state && 'is' || 'is not'
end

def is_a_positive_integer?(text)
  text.match(/^[+]?[0-9]/) == nil ? false : true 
end

#Get the value from the user
year = prompt("Please enter a year to determine if it is a leap year or not")

#Check if the argument is a positive integer. If not, the program asks for the year as a positive integer
while !is_a_positive_integer year
    year = prompt("Please, enter the year as a positive integer") 
end

#Calculation and display of the result
minutes_in_day = 24 * 60
puts "You entered #{year}. It #{is_or_not leap_year?(year)} a leap year. It lasts #{minutes_in_day * (leap_year?(year) ? 366 : 365)} minutes"
