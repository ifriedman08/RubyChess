class Queen < SlidingPiece
  def moves
    diagonal_moves + hor_vert_moves
  end

  def to_s
    " ♛ ".colorize(color)
  end
end
