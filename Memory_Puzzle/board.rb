require "byebug"

require_relative "card"

class Board
    attr_reader :grid


   
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
        card_array = []     #stores our cards ready to be placed
        face_values = ["a","b", "c", "d", "e", "f", "g", "h"]
        face_values.each do |card_face|
            2.times do 
                card_array << Card.new(card_face)
            end 
        end 
        card_array.shuffle!
        i = card_array.length-1
        #while i >= 0 
            @grid.each_with_index do |row, k| 
                row.each_with_index do |card, j|
                    #card = Card.new(card_array[i])
                    @grid[k][j] = card_array[i]
                    i -= 1
                end
            end
        #end
        #@grid
    end
    
    def render
        @grid.each do |row|
            row.each do |card|
                puts card.face_value
            end
        end
    end
                        
     
end