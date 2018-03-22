class Parent

	def override()
		puts "PARENT override()"
	end

	def implicit()
		puts "PARENT implicit"
	end

	def altered()
		puts "PARENT altered()"
	end
end

class Child < Parent
	# overrides Parent class
	def override()
		puts "CHILD override()"
	end

	def altered()
		puts "CHILD, BEFORE PARENT altered()"
		# Super runs function from Parent class
		super()
		puts "CHILD, AFTER PARENT altered()"
	end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
# Print function from Parent
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()