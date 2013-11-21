class BowlingGame
	attr_reader :rolls

	def initialize()
		@rolls = []
	end

# Record a roll in the game.
#
# Pins - The Integer number of pins knocked down in this roll.
#
# Returns nothing
	def roll(pins)
		@rolls.push(pins)
	end

# Returns the integeger score for this game. Expects to be run after all rolls
# for the game have been recorded
	def score
		@rolls.reduce(:+)
	end


end
