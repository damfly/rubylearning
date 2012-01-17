class Dog
  attr_reader :name
  def initialize(dog_name)
    @name = dog_name
    @learned_tricks= Hash.new
  end

  def teach_trick(trick, &block)
    if block_given?
      @learned_tricks[trick] = lambda &block
    end
  end

  def method_missing(m, *args, &block)  
    @learned_tricks.has_key?(m.to_sym) ? @learned_tricks[m.to_sym].call  : "#{@name} doesn't know how to #{m}!"
  end
end

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{d.name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{d.name} is a smelly doggy!" }
puts d.poo
puts
d2=Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{d2.name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts
d3=Dog.new('Stimpy')
puts d3.dance
puts d3.laugh
