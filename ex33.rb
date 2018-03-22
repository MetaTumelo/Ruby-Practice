def loop(loopnum, increment)
	i = 0
	numbers = []


	while i < loopnum
		puts "At the top i is #{i}"
		numbers.push(i)

		i += increment
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	numbers.each {|num| puts num }
end



def the_each
	numbers = []

	(0..5).each do |n|
		puts "The numbers are: #{n}"
		numbers.push(n)

		puts "Numbers now: ", numbers
	end
end

puts the_each