
puts "Which file would you like to open?"
input_file =  gets.chomp
# function prints entire file
def print_all(f)
	puts f.read
end
# function starts at the begining of file
def rewind(f)
	f.seek(0)
end
# function to print specific file
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end
# open and store file in current_file variable
current_file = open(input_file)

puts "First let's print the whole file:\n"
# Call function to read entire file
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
#  Call function to start at line zero
rewind(current_file)

puts "Let's print three lines:"
# Current_line is at 1
current_line = 1
print_a_line(current_line, current_file)
# current_line is at 1 + next line
current_line += 1
print_a_line(current_line, current_file)
# current_line is at previous position plus 1
current_line += 1
print_a_line(current_line, current_file)

current_file.close