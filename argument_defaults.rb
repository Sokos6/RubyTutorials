#default values can be set so that there are no errors when an argument isn't passed in

def welcome(name = "World")
    puts "Hello #{name}"
end

def add(n1=0, n2=0)
    puts n1 + n2
end

def longest_word(words = [])
    words = ['apple', 'pear', 'banana', 'plum']
    longest_word = words.inject do |memo,word|
        memo.length > word.length ? memo : word
    end
    puts longest_word
end

def over_five?(value)
    puts value > 5 ? 'Over 5' : 'Not over 5'
end 

#welcome now needs to have an argument passed into it
welcome("Will")
#now can just pass in a different argument instead of having to rewrite the method
welcome("Peter")
welcome "Ruby"\

#calling with no argument
welcome
longest_word
###############

add(2, 2)
fruits = ['apple', 'pear', 'banana', 'plum']
longest_word(fruits)
over_five?(8)
