class Card
    



    def initialize(face_value)
        @face_up = false
        @face_value = face_value
    end

    def face_up?
        return face_value if face_up
    end

    def face_value 
        @face_value
    end

    def face_up
        @face_up
    end

    def hide
        @face_up == false
    end

    def reveal
        @face_up == true
    end

    def to_s
        @face_value.to_s
    end

    def ==(other_card)
        @face_value == other_card
    end
end