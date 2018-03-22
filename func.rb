def crypto(ethereum_amount, bitcoin_amount)
	puts "You have #{ethereum_amount} Ethereum and #{bitcoin_amount} Bitcoin."
	puts "The current prices for Ethereum are 120 and Bitcoin 2400"
	puts "If you sell now you will make: "
	puts " #{ethereum_amount * 120} dollars for ETH and #{bitcoin_amount * 2400} for BTC"
end

puts "Enter arguments directly"
crypto(23, 12)

puts "Putting these in variables"
eth = 25
btc = 12

crypto(eth, btc)

puts "Add arguments with math: "
crypto(2 * 6, 3 * 6)

puts "Add argument with variable and math: "
crypto(eth * 2, btc * 2)

puts "Add arguments via user input: \n"
puts "How much Ethereum do you have?"
ether = gets.chomp.to_i

puts " How much Bitcoin do you have?"
bit = gets.chomp.to_i

crypto(ether, bit)