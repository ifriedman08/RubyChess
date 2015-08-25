class Bishop < SlidingPiece

  # def initialize(color)
  #   @color = color
  # end

  def moves
    diagonal_moves
  end

  def to_s
    " ♝ ".colorize(color)
  end
end
