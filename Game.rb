require './Player.rb'

class Game 
  attr_accessor :p1, :p2, :current_player
  def initialize
    puts "Welcome to the Ruby Math Game!"
    puts "Please enter a name for player 1:"
    p1 = gets.chomp
    @p1 = Player.new(p1)
    puts "Hello #{p1}, please enter a name for player 2:"
    p2 = gets.chomp
    @p2 = Player.new(p2)
    puts "Hello #{p2}, the game will now begin."
    @current_player = p1
  end

  def next turn
    @current_player  == @p1 ? @p2 : @p1
  end

  def end
    @p1.lives <= 0 || @p2.lives <= 0
    puts "End of the game!"
  end
end
