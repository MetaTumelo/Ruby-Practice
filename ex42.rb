class Animal
  attr_reader :name
end

## Dos is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end

end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end

  def say_hello()
    super("meow")
  end

end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil

    ## Person has-a list ofhobbies
    @hobbies = []

    ## Person has-a list of preferences
    @preferences = {}

  end

  attr_accessor :pet, :hobbies, :preferences

  def description()
    puts "Person's name is #{@name}."
    puts "#{@name} has the following hobbies:"
    @hobbies.each {|list| puts list }

    puts "#{@name} also has the following preferences:"
    @preferences.each {|key, value| puts "#{key}: #{value}"}

    puts "#{@name} has a pet named #{@pet.name}." unless @pet.nil?
  end
end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a name from Person
    super(name)
    ## Person has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
paws = Cat.new("Paws")

## mary is-a Person
mary = Person.new("Mary")

## Mary has-a pet named satan
mary.pet = paws

mary.hobbies = ["reading", "knitting", "stripping", "sucking"]

mary.preferences = {'eggs' => 'sunny side up', 'coffee' => 'black and strong', 'position' => 'doggystyle'}
## frank is-a Employee whose name is 'frank' and has a salary of '120000'
frank = Employee.new("Frank", 120000)

## Frank has-a pet named rover
frank.pet = rover

## Flipper is-a Fish
flipper = Fish.new()

## Crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

mary.description()