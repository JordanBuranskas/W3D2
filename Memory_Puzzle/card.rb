class Card
    attr_reader :face_value, :face_up
    @@face_values = ['a', 'b', 'c' , 'd']


    def initialize(face_value)
        @face_up = false
        @face_value = face_value
    end

    def face_up?
        return face_value if face_up
    end

    def hide
        face_up == false
    end

    def reveal
        face_up == true
    end

    def to_s

    end

    def ==

    end
end