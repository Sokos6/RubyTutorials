#Methods with arguments typically use parentheses. 
#Methods without arguments typically do not
#parentheses are optional, but are fairly standard practice

#arguments give the real power and flexibility to our methods

def welcome(name)
    puts "Hello #{name}"
end

def add(n1, n2)
    puts n1 + n2
end

def longest_word(words)
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
welcome "Ruby"
add(2, 2)
fruits = ['apple', 'pear', 'banana', 'plum']
longest_word(fruits)
over_five?(8)
