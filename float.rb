print "Pay me any decimal amount?"
money = gets.chomp.to_f

puts "You gave #{money * 10/100}"