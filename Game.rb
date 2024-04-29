class Game 
  attr_accessor :p1, :p2
  def initialize
    puts "Welcome to the Ruby Math Game!"
    puts "Please enter a name for player 1:"
    p1 = gets.chomp
    @p1 = p1
    puts "Hello #{p1}, please enter a name for player 2:"
    p2 = gets.chomp
    @p2 = p2
    puts "Hello #{p2}, the game will now begin."
  end

  def end
    puts "End of the game!"
  end
end
