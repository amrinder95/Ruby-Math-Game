require './Player.rb'
class Questions
  attr_reader :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question(player)
    puts "What is the sum of #{@num1} and #{@num2}?"
    user_answer = gets.chomp.to_i
    if user_answer == @answer
      puts "Correct!"
      player.add_score
    else 
      puts "Incorrect!"
      player.remove_life
    end
  end
end
