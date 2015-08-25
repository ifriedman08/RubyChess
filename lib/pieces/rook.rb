class Rook < SlidingPiece

  # def initialize(color)
  #   @color = color
  # end

  def moves
    hor_vert_moves
  end

  def to_s
    " ♜ ".colorize(color)
  end
end
