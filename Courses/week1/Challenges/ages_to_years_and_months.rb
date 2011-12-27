=begin
  * Name: ages_to_years_and_months.rb 
  * Description : use formatting
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Assignement
#Victor Goff's challenge
#Working out the age in years and months form

#Lists of age_in_seconds to transform

#979000000
#2158493738
#246144023
#1270166272
#1025600095



#Definition of constants
SECONDS_IN_MINUTE = 60
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
DAYS_IN_YEAR = 365.25

def age_in_seconds_to_years_and_months(seconds)
  seconds_in_day = HOURS_IN_DAY  * MINUTES_IN_HOUR * SECONDS_IN_MINUTE
  seconds_in_year = seconds_in_day * DAYS_IN_YEAR 
  age_in_years = seconds / seconds_in_year
  months = (age_in_years - age_in_years.to_i) * 12

  if months.to_i != 0
    if months.to_i == 1
    "#{age_in_years.to_i} years and 1 month"
    end
    "#{age_in_years.to_i} years and #{months.to_i} months"
  else
    "#{age_in_years.to_i} years"
  end
end

ages_in_seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

ages_in_seconds.each do |seconds|
  puts "#{seconds} seconds => #{age_in_seconds_to_years_and_months(seconds)}"
end
