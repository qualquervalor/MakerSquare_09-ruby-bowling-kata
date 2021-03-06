require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../bowling_game'

describe BowlingGame do 
	let(:game){BowlingGame.new}

	describe '.initialize' do
		it 'sets @rolls to an empty array' do
	
			expect(game.rolls).to eq([])
		end
	end

	describe '#score' do
		context 'when only gutter balls are thrown' do
			it 'scores the game as 0' do
				20.times { game.roll(0) }

				expect(game.score).to eq(0)
			end
		end

		context 'when only one pin is knocked down on every roll' do
			it 'score the game as 20' do
				20.times {game.roll(1)}

				expect(game.score).to eq(20)
				end
			end	

		context 'when a spare is thrown' do
			it 'records the frame score as 10 plus number of pins knocked down in next roll' do
				3.times { game.roll(5) }
				17.times { game.roll(0) }

				expect(game.score).to eq (20)
			end
		end

		context 'when a strike is thrown' do
			it 'record the frame score as 10 plus the next two rolls' do
				1.times { game.roll(10) }
				2.times { game.roll(5) }
				16.times { game.roll(0) }

				expect(game.score).to eq (30)
			end
		end
	end	

end