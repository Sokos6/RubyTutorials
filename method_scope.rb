#if you uncomment value, calling value at the end of the program woks
#because value is set as a global variable. 
#value = 7   

def welcome
    puts "Hello World"
end

def add
    puts 1 + 1
end

def longest_word
    words = ['apple', 'pear', 'banana', 'plum']
    longest_word = words.inject do |memo,word|
        memo.length > word.length ? memo : word
    end
    puts longest_word
end

def over_five?
    value = 3
    puts value > 5 ? 'Over 5' : 'Not over 5'
end 

welcome
add
longest_word
over_five?
    
# will returned undefined because value is only in the scope of the method
puts value  

#actually calls the method, not the variable name that is inside the scope of the longest_word method
#method names and local variables can look the same so be careful
puts longest_word