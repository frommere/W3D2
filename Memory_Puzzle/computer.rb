require_relative "game.rb"
class Computer
    attr_reader :name
    def initialize
        @name = "computer"
    end
    def get_position(size)
        response = [(0..size).random, (0..size).random]
        response
    end
end