ten_things = "Apples Oranges Crows Telephone Light Sugar"

list_ten = ten_things.split(' ')
items = list_ten.to_a

puts "The following list has ten things"
(1..items.length).each { |x| puts "#{x} %s" % items[-x] }

puts "Wait there are only #{items.length} things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
	next_one = more_stuff.pop
	puts "adding #{next_one}"
	stuff.push(next_one)
	puts "There are now #{stuff.length} items in the array"
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")