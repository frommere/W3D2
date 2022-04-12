require "byebug"
require_relative "game.rb"

class Computer
  attr_reader :name
  
  def initialize
    @name = "computer"
    @knowncards = Hash.new{|h,k| h[k] = []}
    @matched_positions = []
  end

  def get_position_first(size)
    knownpositions = []
    @knowncards.values.each do |positions|
      knownpositions += positions
    end

    @knowncards.values.each do |positions|
      if positions.length == 2 && !@matched_positions.include?(positions[0])
        return positions[0]
      end
    end

    response = []
    until !@matched_positions.include?(response) && response.length !=0 && !knownpositions.include?(response)
      response = [rand(0...size), rand(0...size)]
    end
    response
  end

  def get_position_second(size, firstvalue)    
    if @knowncards.keys.include?(firstvalue) && @knowncards[firstvalue].length == 2
      return @knowncards[firstvalue].first
    end
    get_position_first(size)
  end

  def receive_revealed_card(pos, value)
    @knowncards[value] << pos
  end

  def receive_match(pos_1, pos_2)
    @matched_positions.push(pos_1)
    @matched_positions.push(pos_2)
  end

end