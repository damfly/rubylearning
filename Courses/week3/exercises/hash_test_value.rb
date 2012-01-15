=begin
Exercise14 The next set of exercises are sample questions from the Important Ruby Association Certified Ruby 
Programmer examination. Thanks to Satoshi Asakawa for the Japanese to English translation.

Select all answers which return true.
h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
Answers:
1. h.member?("Matz") 
2. h.member?("Python") TRUE
3. h.include?("Guido")
4. h.include?("Ruby") TRUE
5. h.has_value?("Larry") TRUE
6. h.exists?("Perl")

TRUES : 2, 4, 5


=end

h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
puts h.member?("Matz")
puts h.member?("Python")
puts h.include?("Guido")
puts h.include?("Ruby")
puts h.has_value?("Larry")
puts h.exists?("Perl")
