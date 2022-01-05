class Questions

  attr_reader :ans
  
  def random_addition_question(player)
    num = Random.new
    num1 = num.rand(1..20)
    num2 = num.rand(1..20)
    @ans = num1 + num2
    puts "#{player} : What is #{num1} + #{num2}?"
  end

end