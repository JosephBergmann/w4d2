class Board
    def initialize()
        @rows = Array.new(8){Array.new(8) {NullPiece.new}}
    end

    def [](pos)
        @rows[pos[0], pos[1]]
    end

    def []=(pos, val)
        @rows[pos[0], pos[1]] = val
    end

    def move_piece(start_pos, end_pos)
        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece
    end
end