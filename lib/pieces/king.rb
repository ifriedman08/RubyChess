class King < SteppingPiece
  def moves
    moves_from_steps(HOR_VERT_STEPS) + moves_from_steps(DIAGONAL_STEPS)
  end

  def to_s
    " ♚ ".colorize(color)
  end
end
