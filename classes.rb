#Think of a memopad, where you can tear off new memos. Each memo is predefined, with areas to fill in. But you can fill in each one
#with different information. 
#attributes would be the values you fill in on each memo - A value that persists inside of an instance
# Ruby Instance variable @variable

#you never have access to the instance variable from outside of the instance

class Animal
    
    ## adding species here sets the class variable to species
    @@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
    @@total_animals = 0
    @@current_animals = []
    
    #adding a class method
    def self.all_species
        #add a class variable by @@
        #@@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
        @@species
    end
    
    def self.create_with_attributes(noise, color)
        animal = self.new(noise)
        animal.color = color
        return animal
    end
    #initialize kind of a magic method name that gets called on every object
    def initialize
        @legs = 4
        @arms = 0
        @@total_animals += 1
        @@current_animals << self
        puts "A new animal has been instantiated"
    end
    
    ##YOU CAN ADD PARAMATERS TO INITIALIZE THEN PASS THEM TO THE NEW OBJECT CREATION!!!!
    ## EXAMPLE ABOVE IF YOU CHANGE IT TO 
    ## def initialize(noise, legs, arms)
    ##   @noise = noise
    ##   @legs = legs
    ##   @arms = arms
    ##   puts "a new animal has been instantiated"
    ## end
    ##
    ## then you can do 
    ## animal1 = Animal new("moo", 4, 0)
    
    #a writer method / in java a setter method
    def set_noise(noise)
        @noise = noise
    end
    # reader method / java getter method
    def get_noise
        @noise
    end
    
    # we don't have an instance, it displays the array, we call it directly on the class
    # returns general information about the class itself
    puts Animal.all_species.inspect
    
    #now test with accessor methods, that are used in place of having to write the reader/writer methods 
    attr_accessor :name
    attr_writer :color
    attr_reader :legs, :arms
end

## WORKING WITH INHERITANCE
 class Cow < Animal
 end
#we have the flexibility to pass in a noise to each new animal instance
#creates an instance of the class, a new Animal object, and assigns it to the variable animal
animal = Animal.new
animal.set_noise("moo")
#then we tell the Animal to make noise, by calling the make_noise method on the variable animal
puts animal.get_noise


animal2 = Animal.new
animal2.set_noise("bark")
puts animal2.get_noise

animal.name = "Steve"
puts animal.name


## won't work without class reader and writer methods  - puts Animal.current_animals.inspect



goldie = Cow.new("moo")
puts goldie.get_noise
