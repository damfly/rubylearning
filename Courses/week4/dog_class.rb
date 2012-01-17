#Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:

#bark(), eat(), chase_cat()
#I shall create the Dog object as follows:
#d = Dog.new('Leo')


class Dog

  def initialize(dog_name)
  @dog_name = dog_name
  end

  def bark
    "#{@dog_name} barks: Whouaf whouaf"
  end

  def eat
    "#{@dog_name} is eating"
  end

  def chase_cat()
    "#{@dog_name} is chasing a cat"
  end

end

d= Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat
