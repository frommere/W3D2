class Player
  def initialize(human?)
    @human? = human?
    
  end

  def humanplayer
    puts "please enter a position in the form 'row column'"
    response = gets.chomp.split(" ").map(&:to_i)
    response
  end

  def computerplayer(n)
    [(0..n).random, (0..n).random]
  end

  def play(n = 3)
    if @human?
      self.humanplayer
    else
      self.computerplayer(n)
    end
  end
end