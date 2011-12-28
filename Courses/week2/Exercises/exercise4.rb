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

#Definition of the method checking if a year is a leap year or not
def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

def is_or_not (state) 
  state and 'is' or 'is not'
end

#Get the value from the user
#Check if the argument is an integer. If not, a message is displayed and the program exits
def get_and_check_int
  STDOUT.flush
  number = gets.chomp
  begin 
    number = Integer(number)
  rescue ArgumentError
    puts "Please, enter a year using an Integer :)"
    get_and_check_int
  end
end

year = get_and_check_int
minutes_in_day = 24 * 60
puts "#{year} #{is_or_not leap_year?(year)} a leap year. It lasts #{minutes_in_day * (leap_year?(year) ? 366 : 365)} minutes"
