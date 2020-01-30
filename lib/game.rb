require_relative 'board'
require_relative 'player'
require_relative 'boardcase'

class Game
  attr_accessor :total_board, :player1, :player2

  def initialize(player1_name, player2_name)
    @total_board = Board.new
    @player1 = Player.new(player1_name, "x")
    @player2 = Player.new(player2_name, "o")
  end

  def turn_player1(case_chosen)
    @total_board.attribution(case_chosen,"x")
  end

  def turn_player2(case_chosen)
    @total_board.attribution(case_chosen,"o")
  end

  def win_combination
    n = 0
    @total_board.win_board.each do |array|
      array.each do |box|
        if box.symbol == "x"
          n = n + 1
        elsif box.symbol == "o"
          n = n - 1
        end
      return n
      end
    end
  end


  def end_of_the_game_conditions
    if @board.position

      return true
    end
  end

end
