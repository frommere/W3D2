require_relative "game.rb"
class Computer
  attr_reader :name
  
  def initialize
    @name = "computer"
    @knowncards = {}
    @matched_positions = []
  end

  def get_position(size)
    response = [rand(0...size), rand(0...size)]
    response
  end

  def receive_revealed_card(pos, value)
    @knowncards[value] = pos
  end

  def receive_match(pos_1, pos_2)
    @matched_positions.push(pos_1)
    @matched_positions.push(pos_2)
  end

end