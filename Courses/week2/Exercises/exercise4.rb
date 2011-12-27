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

def leap_year?(year)
  if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
    true
  else 
    false
  end
end

STDOUT.flush
year = gets.chomp


#Check if the argument is an integer. If not, a message is displayed and the program exits
begin
    year = Integer(year)
rescue ArgumentError
    puts "Please, enter a year using an integer :)"
    exit
end

# Solution to the 1/ problem of the assignement :
puts leap_year?(year) ? "#{year} is a leap year" : "#{year} is not a leap year"


# Solution to the 2/ problem of the assignement :
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_LEAP_YEAR = 366
DAYS_IN_NON_LEAP_YEAR = 365

puts leap_year?(year) ? "There is #{DAYS_IN_LEAP_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR} minutes in the leap year #{year}" :
                        "There is #{DAYS_IN_NON_LEAP_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR} minutes in the  year #{year}"

