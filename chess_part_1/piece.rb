
class Piece
    attr_accessor :token, :pos, :empty
    def initialize(color, board, pos)
        @color = color
        @pos = pos
        @token = :p
        @empty = false
    end

    def moves

    end

    def position

    end

    def empty?
        @empty
    end

        
end