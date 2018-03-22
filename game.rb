
	
	def dead(why)
		puts why, "You can do better!"
		puts ""
		exit(0)
	end

	def start
			puts "You are in a mysterious room."
			puts "There are 3 doors, labelled door 1, door 2 and door 3."
			puts "Choose a door to continue."

		while true
				
			print "> "
			door = $stdin.gets.chomp
		
			if /1/ =~ door
				dragon_room
			elsif door.split.include?('2')
				puts bear_room
			elsif door.split.include?('3')
				puts zombie_room
			else
				puts "What's that? Try again: "
			end

		end
	end

	def zombie_room
		puts "You are in a room full of Zombies"
		puts "These zombies are hungry for human brains."
		puts "You have the following weapons at your disposal:\n "

		zombicide = ['katana sword', 'flame thrower', 'chainsaw']
		zombicide.each do |kill|
			puts "#{kill}"
		end

		puts "\nWhich weapon would you choose?"
		print "> "

		zombicides = $stdin.gets.chomp.downcase

		if ["katana", "sword"].any? { |x| zombicides.include? x }
			dead("Zombies feast on your brain.")
		elsif ["flame", "thrower"].any? { |x| zombicides.include? x }
			puts <<~HEREDOC 
			You fry the zombies, and they open up a path for you, 
			and you run through them and find a door that leads to another room,
			where in front of you are 2 viles. One vile is blue the other is red.
HEREDOC
			puts "\nWhich vile do you drink?"
			print "> "

			vile = $stdin.gets.chomp

			if vile.split.include?('red')
				dead("You are dead, you drank poison")
			elsif vile.split.include?('blue')
				puts "You have now transformed into a Super Saiyan Zombie"
				puts "You win, well done"
				exit(0)
			else
				dead("Wow, you are stupid, you just needed to type 'blue' or 'red'")
			end

		elsif zombicides.split.include?('chainsaw')
					dead("You cannot chain saw fast enough, you become Zombie food!")
		else
			dead("Not sure if that was an option.")
		end
	end

	def dragon_room
		puts "You have a fire breathing dragon in front of you."
		puts "You have have the following items: "
		weapons = ['harpoon', 'water', 'sword']
		weapons.each do |item|
			puts "#{item.capitalize}"
		end
		puts "\nWhich item do you choose to fight the dragon?"

		print "> "
		weapon = $stdin.gets.chomp.downcase

			if weapon == "harpoon"
				dead("You are fried!!")
			elsif weapon == "water"
				dead("The dragon slices you in half using it's claws")
			elsif weapon == "sword"
				dead("A fire ball from the dragon's mouth melts you and the sword")
			else
				puts "Geez,learn to read and type"
				dragon_room
			end
	end

	def bear_room
		puts "You are in front of a huge grizzly bear."
		puts "The bear has a pot of honey, and ready to attack."
		puts "Do you move the bear's honey, wrestle or taunt it?"

		print "> "
		action = $stdin.gets.chomp.downcase

			if action.split.include? "honey"
				puts "You got the bear to move."
				puts "There is a doorway where the bear was standing."
				puts "do you enter the doorway, yes or no?\n"

				print "> "
				enter = $stdin.gets.chomp.downcase

				if enter == "yes"
					puts "You enter and find a chest full of gold."
				else
					dead("You are a fuckin coward, fuck off!!")
				end

			elsif	action.split.include? "wrestle"
				puts "The bear over powers you and rapes you"
				dead("You got bear-raped!!")
			elsif action.split.include? "taunt"
				puts "taunt"
			else 
				puts "You douche"
			end

	end

	def gold_room
		puts "You enter and find a chest full of gold"
			puts "how much gold do you take?"

		print "> "
		choice = $stdin.gets.chomp

		if choice =~ /\d/
			gold_amount = choice.to_i
		else
			dead("Dude, learn to type a number")
		end

		if gold_amount < 50
			puts "You are not greedy, you win!"
			exit(0)
		else
				dead("You greedy bastard, hope you choke on it!")
		end
	end

	start
			
