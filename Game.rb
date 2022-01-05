class Game
  
  attr_reader :players, :current_player
  
  def initialize(player1, player2)
    @players=[player1.name, player2.name]
    @current_player = @players[0]
    @player1 = player1
  end

  def defeat()
    # @current_player -= 1
    @player1.score = @player1.score - 1
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end