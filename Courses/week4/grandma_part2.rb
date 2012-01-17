require_relative 'prompt'
=begin
Exercise3. Call this program (p026zdeafgm2.rb) - Modify your Deaf Grandma program (Week 3 / Exercise6): 
What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. 
Change your previous program so that you have to shout BYE three times in a row. 
Make sure to test your program: if you shout BYE three times, but not in a row, you should still be
talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, 
grandma should pretend not to hear you (and not count it as a BYE).
=end
=begin
class SpeakToGrandma

  def initialize
    @byes = 0
  end

  
  def grandma_talks(from_sonny)
    year = (1930...1951).to_a
    from_sonny == from_sonny.upcase ? (puts "Grandma: NO, NOT SINCE #{year[rand(year.size)]}!") :
                                (puts "Grandma: HUH?! SPEAK UP, SONNY!")
    sonny_talks
  end

  def reset
    @byes = 0
  end

  def sonny_talks
    @sonny = prompt("Speak to Grandma")
    @sonny == 'BYE' ? @byes = @byes + 1 : reset
    unless @byes == 3    
      puts "You enter: #{@sonny}" 
      grandma_talks(@sonny)
    end
  end

end

sonny = SpeakToGrandma.new
sonny.sonny_talks
=end

# Autre méthode

class Sonny

  def initialize
    @sonny_sentence = ""
    @byes = 0
  end
  
  def reset
    @byes = 0
  end

  def speak_to_deaf_granny(grandma)
    @sonny_sentence = prompt("Speak to Grandma")
    @sonny == 'BYE' ? @byes = @byes + 1 : reset
    unless @byes == 3    
      puts "You enter: #{@sonny_sentence}" 
      grandma.respond(@sonny_sentence)
    end
  end
end


class Grandma < Sonny
  def initialize
    @year = (1930...1951).to_a
  end

  def respond(sonny_sentence)
     sonny_sentence == sonny_sentence.upcase ? (puts "Grandma: NO, NOT SINCE #{@year[rand(@year.size)]}!") :
                                (puts "Grandma: HUH?! SPEAK UP, SONNY!")
  speak_to_deaf_granny(grandma)
  end

end


grandma = Grandma.new
sonny = Sonny.new.speak_to_deaf_granny(grandma)
