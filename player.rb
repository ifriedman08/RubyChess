class Player
  attr_accessor :game, :display, :color

  def initialize(game, display, color)
    @game = game
    @display = display
    @color = color
  end
end
