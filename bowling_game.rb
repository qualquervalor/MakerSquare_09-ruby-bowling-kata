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

# Returns the Integer score for this game. Expects to be run after all rolls
# for the game have been recorded.
	def score()
	  total_score  = 0
	  current_roll = 0

	  while current_roll < @rolls.size
	    roll      = @rolls[current_roll]
	    next_roll = @rolls[current_roll + 1]

	    #check case for strike
	    if roll == 10
	    	total_score += 10 + @rolls[current_roll + 1] + @rolls[current_roll + 2]
	    	 current_roll += 1
	    	next
			# else # check case for a spare		
	    elsif roll + next_roll == 10 
	      total_score += 10 + @rolls[current_roll + 2]
	    else# default case for two rolls in a frame with no spares or strikes	    
	    	  total_score += roll + next_roll
	    end

	    #update roll counter to next frame
	    current_roll += 2
	  end

	  return total_score
	end
end


