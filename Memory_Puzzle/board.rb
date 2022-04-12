require "byebug"

require_relative "card.rb"

class Board
  LETTERS = ("A".."Z").to_a
  
  def initialize(n = 4)
    @size = n * n
    @grid = Array.new(n) {Array.new(n)}
  end

  def populate
    gridletters = (LETTERS.sample(@size / 2) * 2).shuffle
    i = 0
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |ele, ele_index|
        @grid[row_index][ele_index] = Card.new(gridletters[i])
        i += 1
      end
    end
  end

  def render
    column_label = "  "
    (0...@grid.length).each do |column_index|
      column_label += column_index.to_s + " "
    end

    puts column_label

    @grid.each_with_index do |row, row_index|
      row_output = ""
      row.each do |ele|
        row_output += ele.output + " "
      end
      puts row_index.to_s + " " + row_output
    end
  end

  def won?
    if @grid.all? {|row| row.all? {|card| card.faceup }}
      true
    else
      false
    end
  end
end