class Question
  def ask_player1
    a = rand(1..20)
    b = rand(1..20)
    puts "Player 1: What does #{a} plus #{b} equal?"
    answer = a + b
  end

  def ask_player2
    a = rand(1..20)
    b = rand(1..20)
    puts "Player 2: What does #{a} plus #{b} equal?"
    answer = a + b
  end
end

# player1 = Question.new
# player1.ask_player1
# player2 = Question.new
# answer = player2.ask_player2
# puts answer