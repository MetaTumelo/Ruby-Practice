# Request a filename as argiment
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "IF you do want that, hit RETURN."

# capture input to continue with file
$stdin.gets

puts "Opening the file..."
# Create a new file or truncate existing with 'w' (write mode)
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
# Clear file
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
# Store user input for line 1
line1 = $stdin.gets.chomp
print "line 2: "
# Store user input for line 2
line2 = $stdin.gets.chomp
print "line 3: "
# Store user input for line 3
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."
# Write lines to file 
target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
# close file
target.close