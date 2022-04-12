require_relative "game.rb"
class Computer
  attr_reader :name
  
  def initialize
    @name = "computer"
    @knowncards = Hash.new{|h,k| h[k] = []}
    @matched_positions = []
  end

  def get_position(size)
    response = []
    until !@matched_positions.include?(response) && response.length !=0 ## check for known values &&@knowncards.values 
    response = [rand(0...size), rand(0...size)]
    end
    response
  end

  def receive_revealed_card(pos, value)
    @knowncards[value] << pos
  end

  def receive_match(pos_1, pos_2)
    @matched_positions.push(pos_1)
    @matched_positions.push(pos_2)
  end

end