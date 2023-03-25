class Judge
  attr_accessor :input

  def input
    input = gets.chomp
  end

  def compare(num)
    if input.to_i == num
      puts "Yes! You are correct"
      true
    else
      puts "Seriously? No!"
      false
    end
  end
end

# answer = Judge.new
# answer.compare(10)