#gets: waits for user input-- a single line ending in a return
# chomp: removes any lined ending("\n", "\r", etc)
# chop: would remove ANY final character(chomp is usually better)

input = gets.chomp

##print: outputs a string with no line return
##puts: outputs a string with a new line return
print "You just told me: "
puts input + "."

#Use gets inside a loop for more user input
result = ""
until result == "quit"
    print "> "
    result = gets.chomp
    puts "I heard: #{result}"
end
puts "Goodbye!"