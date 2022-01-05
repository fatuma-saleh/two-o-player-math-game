# Require other files
require './Questions'
require './Player'
require './Game'

question = Questions.new
player1 = Player.new("Player1")
player2 = Player.new("Player2")
game = Game.new(player1, player2)

while player1.score > 0 && player2.score > 0
  # ---------- Start of loop
  # ask player question
  question.random_addition_question(game.current_player)

  # player input answer and store as variable
  input = gets.chomp.to_i

  # respond with text correct/wrong
  if input == question.ans
    puts "#{game.current_player}: Correct!"
  else
    game.defeat(game.current_player)
    puts "#{game.current_player}: Incorrect!"
  end

  # output scores
  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"

  # new turn
  puts "----- NEW TURN -------"

  # Change player
  game.change_player

  # end game if points == 0
  if player1.score == 0
    puts "Player 2 wins with a score of #{player2.score}/3"
    puts "----- GAME OVER -------"
  end

  if player2.score == 0
    puts "Player 1 wins with a score of #{player1.score}/3"
    puts "----- GAME OVER -------"
  end
  # ------------ end of loop
end

