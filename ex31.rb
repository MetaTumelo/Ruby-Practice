puts "You enter a dark room with two doors. Do you go through door #1, #2 or door #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1, Take the cake."
	puts "2. Scream at the bear"

	print "> "
	bear = $stdin.gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthulu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespin."
	puts "3. Understanding revolvers yelling melodies."

	print "> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end

elsif door == "3"
	puts "You meet a tribe of cannibal pigmys. What do you do?"
	puts "1. Throw them with stones."
	puts "2. Karate kick and Karate chops."
	puts "3. Pee on 'em!"

	print "> "
	bravery = $stdin.gets.chomp

	if bravery == "1" || bravery == "2"
		puts "You are hit with tranquilizer darts, and made into a nice stew."
	elsif bravery == "3"
		puts "The pigmys run away!"
	else
		puts "Choosing %s was a bad idea, they are eating your toes while you're alive." % bravery
	end

else
	puts "You stumble around and fall on a knife and die. Good job!"
end