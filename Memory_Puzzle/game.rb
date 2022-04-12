require_relative "card.rb"
require_relative "board.rb"
require_relative "player.rb"
require_relative "computer.rb"

class Game
  def initialize(size = 4, *name)
    @board = Board.new(size)
    @size = size
    @remaining_guesses = (size * size) / 2
    if !name.first.nil?
        @player = Player.new(name.first)
    else
        @player = Computer.new
    end
  end

  def play_game
    @board.populate
    
    until @board.won? || @remaining_guesses == 0
      @board.render
      pos_1 = @player.get_position(@size)
      if @player.name.nil?
        @player.receive_revealed_card(pos_1, @board[pos_1].value)
      end
      @board.reveal(pos_1)
      @board.render
      pos_2 = @player.get_position(@size)
      if @player.name.nil?
        @player.receive_revealed_card(pos_2, @board[pos_2].value)
      end
      @board.reveal(pos_2)
      @board.render
      if @board[pos_1].value != @board[pos_2].value
        @board.hide(pos_1)
        @board.hide(pos_2)
        puts "incorrect guess"
        @remaining_guesses -= 1
        puts "remaining_guesses: #{@remaining_guesses}"
      end
    end
    
    if @remaining_guesses == 0
      puts "You lost!!!"
    else
      puts "You WON!!!"
    end
  end
end