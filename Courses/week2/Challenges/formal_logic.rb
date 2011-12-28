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
#puts 5 @lt; 3 ? "yeah" : "boo" #=> nil
#boo
 
#Now imagine that operator wouldn't exist, how could you easily replace it by using logic operators and exploiting short-circuiting and precedence?


state = 5 < 3 

#Version of puts 5 > 3 ? "yeah" : "boo" 
puts 5 > 3 && ("yeah") || ("boo")  #=>yeah

#Version of puts 5 < 3 ? "yeah" : "boo"
#puts !state || ("boo") #=> boo


#Autre version qui marche
#puts 5 > 3 && "yeah" || !(5 > 3) && "boo"

#Autre version qui marche
#puts 5 < 3 && "yeah" || !(5 < 3) && "boo"




