require_relative "piece"

class NullPiece < Piece
    attr_accessor :token, :empty
    def initialize
            @token = :np
            @empty = true
    end
end