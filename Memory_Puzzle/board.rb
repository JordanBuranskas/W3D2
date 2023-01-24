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

        @@face_values.each do |card_face|
            2.times do 
                card_array << Card.new(card_face)
            end 
        end 
                                                    #card_array
                                                    # [aa bb cc dd ee ff gg hh]
             card_array.shuffle!
                                                # card_array = [h g f e d b c a a d e b c h g f]
            
                @grid.each do |row|
                    new_row =[]    
                    
                    card_array.each do |card|
                    new_row << row[i] = card

        
                end
            end

            @grid << new_row
            
                        
     
end