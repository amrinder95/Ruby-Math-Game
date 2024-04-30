require './Game'
require './Player'
require './Questions'

game = Game.new

until game.end?
  game.ask_question
  game.next_turn
end

puts "End of the game!"
puts "#{game.current_player.name} has 0 lives left!"
