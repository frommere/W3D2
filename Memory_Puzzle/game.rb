require_relative "card.rb"
require_relative "board.rb"

class Game
def initialize(size)
    @board =Board.new(size)
    @remaining_guesses = (size * size) / 2
end
def get_position
    puts "please enter a position in the form 'row column'"
    response = gets.chomp.split(" ").map(&:to_i)
    response
end
def play_game
    until @board.win?
        @board.render
        pos_1 = self.get_position
        @board.reveal(pos_1)
        pos_2 = self.get_position
        @board.reveal(pos_2)
        if @board[pos_1].value != @board[pos_2].value
            @board.hide(pos_1)
            @board.hide(pos_2)
            puts "incorrect guess"
            @remaining_guesses -= 1
            puts "remaining_guesses: #{@remaining_guesses}"
        end
    end
end
end