filename = ARGV.first

puts "We are opening #{filename}."

ebook = open(filename)

print ebook.read

ebook.close