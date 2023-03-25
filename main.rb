require "pp"
require './judge.rb'
require './question.rb'

# player1 = Question.new
# answer = player1.ask_player1
# result = Judge.new
# result.compare(answer)

class Main
  @@p1 = 3
  @@p2 = 3

  def start
    while @@p1 > 0 && @@p2 > 0
      ask1 = Question.new
      answer1 = ask1.ask_player1
      result1 = Judge.new
      if result1.compare(answer1)
        @@p1
        puts "P1: #{@@p1}/3 vs P2:#{@@p2}/3"
      else
        @@p1 -= 1
        puts "P1: #{@@p1}/3 vs P2:#{@@p2}/3"
      end

      if @@p2 == 0
        puts "Player 1 wins with a score of #{@@p1}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      elsif @@p1 == 0
        puts "Player 2 wins with a score of #{@@p2}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      end

      puts "----- NEW TURN -----"

      ask2 = Question.new
      answer2 = ask2.ask_player2
      result2 = Judge.new
      if result2.compare(answer2)
        @@p2
        puts "P1: #{@@p1}/3 vs P2:#{@@p2}/3"
      else
        @@p2 -= 1
        puts "P1: #{@@p1}/3 vs P2:#{@@p2}/3"
      end
      if @@p2 == 0
        puts "Player 1 wins with a score of #{@@p1}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      elsif @@p1 == 0
        puts "Player 2 wins with a score of #{@@p2}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      end

      puts "----- NEW TURN -----"
    end 
  end
end

game = Main.new
game.start