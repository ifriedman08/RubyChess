class Bishop < SlidingPiece
  def moves
    diagonal_moves
  end

  def to_s
    " ♝ ".colorize(color)
  end
end
