#ages_to_years_and_months.rb
#Victor Goff's challenge
#working out the age in years and months form
#
#Lists of age_in_seconds to transform
#
#979000000
#2158493738
#246144023
#1270166272
#1025600095
#
#4 years (leap years) = 1461 days
#
ages_in_seconds = %w{979000000 2158493738 246144023 1270166272 1025600095}


def seconds_to_years(seconds)
  years = 4.to_f * seconds.to_f / (3600.to_f * 24.to_f) / 1461.to_f
  months = (years - years.to_i) * 12
  if months.to_i != 0
    if months.to_i == 1
    "#{years.to_i} years and 1 month"
    end
    "#{years.to_i} years and #{months.to_i} months"
  else
    "#{years.to_i} years"
  end

end

ages_in_seconds.each do |seconds|
  puts "#{seconds} seconds => #{seconds_to_years(seconds)}"
end

yy = Time.at(2158493738)
puts yy
