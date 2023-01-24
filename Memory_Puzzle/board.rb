require "byebug"

require_relative "card"

class Board
    attr_reader :grid
    
    @@face_values = ['a', 'b', 'c' , 'd']
    def initialize
        @grid = Array.new(4) {Array.new(4)}
    end

    def [](arr)
        @grid[arr[0]][arr[1]]
    end

    def []=(pos, value)
        @grid[pos[0]][pos[1]] = value
    end

    def populate
        @@face_values.each do |card_face|
            coordinate_history = []
            2.times do 
                pos = nil
                while coordinate_history.include?(pos)
                    row = rand(0...@grid.length)
                    col = rand(0...@grid.length)
                    pos = [row, col]
                    if !coordinate_history.include?(pos)
                        @grid[pos] = Card.new(card_face)
                        coordinate_history << pos
                    end
                end
            end
        end
    end
end