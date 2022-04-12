require "byebug"

class Board
  LETTERS = ("A".."Z").to_a
  
  def initialize(n = 4)
    @size = n * n
    @grid = Array.new(n) {Array.new(n)}
  end

  def populate
    gridletters = (LETTERS.sample(@size / 2) * 2).shuffle
    i = 0
    debugger
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |ele, ele_index|
        @grid[row_index][ele_index] = gridletters[i]
        i += 1
      end
      # @grid[row_idx] = new_row
    end
  end
end