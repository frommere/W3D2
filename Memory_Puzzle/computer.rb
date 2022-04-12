require_relative "game.rb"
class Computer
    attr_reader :name
    
    def initialize
        @name = "computer"
    end

    def get_position(size)
        response = [rand(0...size), rand(0...size)]
        response
    end
end