=begin
  * Name: exercise3.rb
  * Description : use formatting
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Write a Ruby program that displays how old I am, in years, if I am 979000000 seconds old.
#Display the result as a floating point (decimal) number to two decimal places (for example, 17.23)


#Définition of CONSTANTS

SECONDS_IN_MINUTE = 60.0
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_YEAR = 365


def convert_seconds_to_years(seconds)
  seconds_in_day = HOURS_IN_DAY  * MINUTES_IN_HOUR * SECONDS_IN_MINUTE    #a day has 24 hours, composed ofr 60 minutes composed of 60 seconds
  seconds_in_year = seconds_in_day * DAYS_IN_YEAR                         #number of seconds in a year - 365 days in a year (we do not take into account leap years)
  age_in_years = seconds / seconds_in_year
end

puts "I'm %.2f years old" % convert_seconds_to_years(979_000_000) 



