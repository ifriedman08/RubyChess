class Rook < SlidingPiece
  def moves
    hor_vert_moves
  end

  def to_s
    " ♜ ".colorize(color)
  end
end
