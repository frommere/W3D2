class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @knowncards = {}
    
  end

  def get_position(size)
  puts "please enter position in the form 'row col'"
  response = gets.chomp.split(" ").map(&:to_i)
  response
  end
  
  def receive_revealed_card(pos, value)
  end
  def matched_positions(pos_1, pos_2)
  end

end