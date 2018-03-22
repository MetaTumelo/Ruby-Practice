class Parent
	def implicit()
		puts "This is implicit()"
	end
end

class Child < Parent
end

dad = Parent.new
son = Child.new

dad.implicit()
son.implicit()