## Solutions to common problems, copy-and-paste code snippets, explanations, examples, and short tutorials. 
#These are meant to keep your brain active with new ideas and save you time. Time, as they say, is money, but a span of time is
#also a piece of your life. Our lives are better spent creating new things than fighting our own errors, 
#or trying to solve problems that have already been solved. Adapted from Ruby Cookbook by Lucas Carlson and Leonard Richardson.

# Reversing a String by Words or Characters

#Problem
#The letters (or words) of your string are in the wrong order.

#Solution
#To create a new string that contains a reversed version of your original string, use the reverse method.
#To reverse a string in place, use the reverse! method.
s = "Ruby Course"
news = s.reverse
puts news # => esruoC ybuR
s.reverse!
puts s # => esruoC ybuR
#To reverse the order of the words in a string, split the string into a list of whitespace separated words, 
#then join the list back into a string (this is as per your solution of Lesson 3 Exercise5).


#2. Processing a String One Character at a Time

#Problem
#You want to process each character of a string individually.

#Solution
#If you're processing an ASCII document, then each byte corresponds to one character.
#Use String#each_byte to yield each byte of a string as a number, which you can turn into a one-character string:
#'Ruby Course'.each_byte { |x| puts "#{x} = #{x.chr}" }
#The output is:
#82 = R
#117 = u
#98 = b
#121 = y
#32 =
#67 = C
#111 = o
#117 = u
#114 = r
#115 = s
#101 = e
#Use String#scan to yield each character of a string as a new one-character string:
#'Ruby Course'.scan( /./ ) { |c| puts c }
#The output is:
#R
u
b
y

#C
o
u
r
s
e
#Discussion
#Since a string is a sequence of bytes (from Ruby 1.9, Ruby strings are simply sequences of characters) and 
#String#scan works by applying a given regular expression to a string, and yielding each match to the code block you provide. 
#The regular expression /./ matches every character in the string, in turn.

#3. Changing the Case of a String

#Problem
#Your string is in the wrong case, or no particular case at all.

#Solution
#The String class provides a variety of case-shifting methods:
s = 'HELLO, I am not here. I WENT to tHe MaRKEt.'
puts s.upcase # => "HELLO, I AM NOT HERE. I WENT TO THE MARKET."
puts s.downcase # => "hello, i am not here. i went to the market."
puts s.swapcase # => "hello, i AM NOT HERE. i went TO ThE mArkeT."
puts s.capitalize # => "Hello, i am not here. i went to the market."
#Discussion
#The upcase and downcase methods force all letters in the string to upper- 
#or lowercase, respectively. The swapcase method transforms uppercase letters into lowercase letters and vice versa.
#The capitalize method makes the first character of the string uppercase, if it's a letter, and makes all other letters in the string lowercase.
#All four methods have corresponding methods that modify a string in place rather than creating a new one:
#upcase!, downcase!, swapcase!, and capitalize!. 
#Assuming you don't need the original string, these methods will save memory, especially if the string is large.

#4. Parsing a Number from a String

#Problem
#Given a string that contains some representation of a number, you want to get the corresponding integer or floating-point value.

#Solution
#Use String#to_i to turn a string into an integer. Use String#to_f to turn a string into a floating-point number.
puts '400'.to_i # => 400
puts '3.14'.to_f # => 3.14
puts '1.602e-19'.to_f # => 1.602e-19
#Discussion
#Ruby does not automatically make a number out of a string that contains a number. 
#You must explicitly call a conversion method that tells Ruby how you want the string to be converted.

#5. Managing Whitespace

#Problem
#Your string contains too much whitespace, not enough whitespace, or the wrong kind of whitespace.

#Solution
#Use strip to remove whitespace from the beginning and end of a string:
puts " \tWhitespace at beginning and end. \t\n\n".strip
#To remove whitespace from only one end of a string, use the lstrip or rstrip
#method:
s = " Whitespace madness! "
puts s.lstrip # => "Whitespace madness! "
puts s.rstrip # => " Whitespace madness!"
#Add whitespace to one or both ends of a string with ljust, rjust, and center:
s = "Some text."
puts s.center(15)
puts s.ljust(15)
puts s.rjust(15)
#Discussion
#What counts as whitespace? Any of these five characters: space, tab (\t), newline (\n), linefeed (\r), and form feed (\f). 
#The strip method strips any combination of those characters from the beginning or end of a string.

#The methods for adding whitespace to a string (center, ljust, and rjust) take a single argument: 
#the total length of the string they should return, counting the original string and any added whitespace.
#If center can't center a string perfectly, it'll put one extra space on the right:
puts "ruby".center(5) # => "ruby "
puts "ruby".center(6) # => " ruby "

#6. Getting the Parts of a String You Want

#Problem
#You want only certain pieces of a string.

#Solution
#To get a substring of a string, call its slice method, or use the array index operator (that is, call the [] method). 
#Either method accepts a RangeFixnum arguments: the index at which to start, and the length of the substring to be extracted. 
#describing which characters to retrieve, or two
s = 'My kingdom for a string!'
puts s.slice(3,7) # => "kingdom"
puts s[3,7] # => "kingdom"
puts s[0,3] # => "My "
puts s[11, 5] # => "for a"
puts s[11, 17] # => "for a string!"
#To count from the end of the string instead of the beginning, use negative indexes:
puts s.slice(-7,3) # => "str"
puts s[-7,6] # => "string"
