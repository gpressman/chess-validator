# board = ChessBoard.new

# movements = [["a2", "a3"],["a2", "a4"],["a2", "a5"],["a7", "a6"],["a7", "a5"],["a7", "a4"],["a7", "b6"],["b8", "a6"],["b8", "c6"],["b8", "d7"],["e2", "e3"],["e3", "e2"]]

# # Validate from INITIAL positions only
# # Later we will move pieces to new positions
# # (update the piece positions as they move)
# if board.legal_movement?("a2", "a5")
#     puts "LEGAL"
# else
#     puts "ILLEGAL"
# end


########################################################


class Piece
	attr_accessor :initial_position
	attr_accessor :color
	def initialize(initial_position, color)
		@initial_position=self.convert(initial_position)
		@color=color
 #    # stores position
 #    # stores team (white or black)
 	end
    def convert(position)
    	letters_toNumber = {"a" => 1, "b"=> 2, "c"=> 3, "d"=> 4, "e"=> 5, "f"=> 6, "g"=> 7, "h"=> 8}
    	key= position[0]
    	x=letters_toNumber[key]
    	y=position[1].to_i
    	decoded_position=[x,y]
    	return decoded_position
    	
	end

end

class Pawn < Piece
	def move
		

		if x(final) != x(current) 
			return "invalid"
		
		elsif y(current)==2 && Piece(color)=="w"
			y(final)==y(current)+1 || y(final)==y(current)+2
			return valid
		
		elsif y(current)!=2 && Piece(color)=="w"
			y(final)==y(current)+1
			return valid 

		elsif y(current)==7 && Piece(color)=="b"
			y(final)==y(current)-1 || y(final)==y(current)-2
			return valid

		elsif y(current)!=7 && Piece(color)=="b"
			y(final)== y(current)-1
			return valid
		else return invalid

			
				
		 

    # moves forward one space
    # if initial movement, can move two spaces
end



class ChessBoard
	attr_accessor :pieces
    def initialize
        @pieces = {}
        @pieces["a2"] = Pawn.new("a2", "w")
        @pieces["b2"] = Pawn.new("b2", "w")
        @pieces["c2"] = Pawn.new("c2", "w")
        @pieces["d2"] = Pawn.new("d2", "w")
        @pieces["e2"] = Pawn.new("e2", "w")
        @pieces["f2"] = Pawn.new("f2", "w")
        @pieces["g2"] = Pawn.new("g2", "w")
        @pieces["h2"] = Pawn.new("h2", "w")
        
        # @pieces["a7"] = Pawn.new
        # @pieces["b7"] = Pawn.new
        # @pieces["c7"] = Pawn.new
        # @pieces["d7"] = Pawn.new
        # @pieces["e7"] = Pawn.new
        # @pieces["f7"] = Pawn.new
        # @pieces["g7"] = Pawn.new
        # @pieces["h7"] = Pawn.new
        # # + more pieces
        # @pieces["b1"] = Knight.new
        # @pieces["g1"] = Knight.new
        # @pieces["b8"] = Knight.new
        # @pieces["g8"] = Knight.new
        # + more pieces
    end

    def check_movement(initial, destination)
    	@pieces[initial]
    end
	
end



board=ChessBoard.new
board.pieces.each do |key, piece|
	p piece.initial_position
end

board.check_movement("a2", "a3")

# board.convert(pieces)
# p board.pieces


    # def legal_movement?(initial, final)
    #     piece = @pieces[initial]
    #     # IF VALID MOVEMENt
    #     if final= nil

    #     piece.position = final
    #     @pieces[final] = piece
    # else p "bad move"
        # identify which piece is in first position
        # figure if that piece can move to second position
#     end
# end


# class Knight < Piece
#     # move in an L (three spaces tall, one space to the side)
# end



# class Rook < Piece
#     # move laterally unlimited amount of spaces
# end


# class Queen < Piece
#     # move laterally and diagonally an unlimited amount of spaces
#     # (re-use movement logic from both Rook and Bishop)
# end

# class King < Piece
#     # moves one space in any direction
# end
