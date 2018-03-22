class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		@lyrics.each {|line| puts line}
	end
end

power_kanye = ["\nNo one man should have this power",
	"I'm counting down the hours",
	"I was drinking earlier, now I'm driving"]

happy_bday = Song.new(["Happy birthday to you",
	"How old are you now",
	"You are very old now"])

bulls_on_parade = Song.new(["\nThey rally around that family",
	"With pockets full of shells"])

power = Song.new(power_kanye)

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

power.sing_me_a_song()
