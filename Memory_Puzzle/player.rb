class Player
  attr_reader :name
  def initialize(name)
    @name = name
    
  end

  def get_position(size)
  puts "please enter position in the form 'row col'"
  response = gets.chomp.split(" ").map(&:to_i)
  response
  end

end