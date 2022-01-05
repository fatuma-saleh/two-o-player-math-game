# Require other files
require './Questions'
require './Player'
require './Game'

question = Questions.new
player1 = Player.new("Player1")
player2 = Player.new("Player2")
game = Game.new(player1, player2)


# ---------- Start of loop
# ask player question
question.random_addition_question(game.current_player)

# player input answer and store as variable
input = gets.chomp.to_i

# respond with text correct/wrong
if input == question.ans
  puts "#{game.current_player}: Correct!"
else
  game.defeat
  puts "#{game.current_player}: Incorrect!"
end

# output scores
puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"

# Change player
# current_player = 0 or 1

# ------------ end of loop