require './Player.rb'
require './Questions.rb'

class Game 
  attr_accessor :current_player
  def initialize
    puts "Welcome to the Ruby Math Game!"
    puts "Please enter a name for player 1:"
    p1 = gets.chomp
    @p1 = Player.new(p1)
    puts "Hello #{p1}, please enter a name for player 2:"
    p2 = gets.chomp
    @p2 = Player.new(p2)
    puts "Hello #{p2}, the game will now begin."
    @current_player = @p1
    puts "#{@current_player.name} you will go first:"
  end

  def next_turn
    @current_player = (current_player == @p1) ? @p2 : @p1
    puts "#{@current_player.name} it is now your turn."
  end

  def end?
    @p1.lives <= 0 || @p2.lives <= 0
  end
end
