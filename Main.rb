require './Game'
require './Player'
require './Questions'

game = Game.new

until game.end?
  game.ask_question
  game.next_turn
end

if game.p1.score > game.p2.score
  @winner = game.p1.name
else 
  @winner = game.p2.name
end

puts "----- GAME OVER -----"
puts "End of the game!"
puts "#{game.current_player.name} has 0 lives left!"
puts "The winner is #{@winner}! Final score: #{game.p1.name} - #{game.p1.score} | #{game.p2.name} - #{game.p2.score}"
