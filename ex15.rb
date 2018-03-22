# Get one argument for ARGV (filename)
filename = ARGV.first
# Open the file name received from ARGV
txt = open(filename)
# Print the filename
puts "Here's your file #{filename}:"
# Read from the opened file
print txt.read
# Prompt to enter file name
print "\nType the filename again: "
# Use gets.chomp to have the user enter the filename 
file_again = $stdin.gets.chomp
# Open gets.chomp captured filename 
txt_again = open(file_again)
# Read from the file
print txt_again.read

txt.close
txt_again.close