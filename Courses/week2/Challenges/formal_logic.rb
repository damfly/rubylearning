=begin
  * Name: formal_logic.rb
  * Description : Formal logic challenge
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end

#Assignement :
#Over the past few years I've noticed that lots of programmers seem to have pretty big deficits when it comes to formal logic.
#Personally I think that's a shame, so I decided to post a little challenge:

#Ruby has a ternary operator (?:), which is basically a short version of if...else:

#puts 5 > 3 ? "yeah" : "boo" #=> nil
#yeah
#puts 5 < 3 ? "yeah" : "boo" #=> nil
#boo
 
#Now imagine that operator wouldn't exist, how could you easily replace it by using logic operators and exploiting short-circuiting and precedence?


state1 = 5 > 3 
state2 = 5 < 3

#puts 5 > 3 ? "yeah" : "boo" 
(state1 && (state1 = ("yeah")))
puts state1 # => yeah


#puts 5 < 3 ? "yeah" : "boo"
(state2 || (state2 = ("boo")))
puts state2 # => boo



