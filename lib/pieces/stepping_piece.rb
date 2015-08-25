class SteppingPiece < Piece
  def moves_from_steps(steps)
    resulting_moves = []
    steps.each do |step|
      new_pos = [pos[0] + step[0], pos[1] + step[1]]
      resulting_moves << new_pos unless board.blocked?(new_pos) && !board.attackable?(new_pos, color)
    end

    resulting_moves
  end
end
