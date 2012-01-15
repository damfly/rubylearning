require_relative 'prompt'
#Exercise6. Write a Deaf Grandma program. 
#Whatever you say to grandma (whatever you type in),
# she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
# If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
# To make your program really believable, have grandma shout a different year each time; 
# maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

#Adapted from Chris Pine's Book.

#For example:

#You enter: Hello Grandma
#Grandma responds: HUH?! SPEAK UP, SONNY!
#You enter: HELLO GRANDMA
#Grandma responds: NO, NOT SINCE 1938!
#


def grandma_talks(from_sonny)
  
  year = (1930...1951).to_a
  from_sonny == from_sonny.upcase ? (puts "Grandma: NO, NOT SINCE #{year[rand(year.size)]}!") :
                                (puts "Grandma: HUH?! SPEAK UP, SONNY!")
  sonny_talks

end

def sonny_talks

  sonny = prompt("Speak to grandma")
  unless sonny == "BYE"
    puts "You enter: #{sonny}" 
    grandma_talks(sonny)
  end
end

sonny_talks



