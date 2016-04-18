#ALL methods have a return value, even a default one

#return is singular. There is only one return value that comes back

#returning a value and using puts outside a method can provide more flexibility than using puts inside


def welcome(name = "World")
    puts "Hello #{name}"
    return 1+1
    #if you add something after the return, it's never going to get there, always going to do the return first
    2+6
end


#creating one object, one return value, when multiple returns are required
def add_and_subtract(n1=0, n2=0)
    add = n1 + n2
    sub = n1 - n2
    #returns one object from the method
    return[add, sub]
end

def longest_word(words = [])
    words = ['apple', 'pear', 'banana', 'plum']
    longest_word = words.inject do |memo,word|
        memo.length > word.length ? memo : word
    end
    return longest_word
    
end

## Return doesn't ahve to be at the end
# and there can be more than one

def over_five?(value=nil)
    return "Exactly 5" if value.to_i == 5
    if value.to_i > 5
        return "Over 5"
    else
        return "Under 5"
    end
end

#test the over_5
puts over_five?(112/18)
welcome("Will")

#Testing Return
returned_value = welcome("Will")
puts returned_value

welcome("Peter")
welcome "Ruby"
welcome
longest_word

fruits = ['apple', 'pear', 'banana', 'plum']
over_five?(8)

result = add_and_subtract(4, 2)
puts result[0]
puts result[1]
add, sub = add_and_subtract(8, 3)
