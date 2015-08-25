class Knight < SteppingPiece

  KNIGHT_STEPS = [
    [2, 1],
    [-2, 1],
    [1, 2],
    [1, -2],
    [2, -1],
    [-2, -1],
    [-1, 2],
    [-1, -2]
  ]

  # def initialize(color)
  #   @color = color
  # end

  def moves
    moves_from_steps(KNIGHT_STEPS)
  end

  def to_s
    " ♞ ".colorize(color)
  end
end
