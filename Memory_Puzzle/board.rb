require "byebug"

class Board
  LETTERS = ("A".."Z").to_a
  
  def initialize(n = 3)
    @size = n * n
    @grid = Array.new(n) {Array.new(n)}
  end

  def populate
    debugger
    gridletters = (LETTERS.sample(@size / 2) * 2).shuffle
    i = 0
    @grid.map! do |row|
      row.map! do |ele|
        gridletters[i]
        i += 1
      end
    end
  end
end