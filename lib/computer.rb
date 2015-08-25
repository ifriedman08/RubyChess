class Computer < Player
  def get_move
    sleep(0.5)
    options = game.board.all_valid_moves(color)
    attackables = options.select {|move| game.board.attackable?(move[1], color)}
    pieces = game.board.grid.flatten.select {|square| square.occupied? && square.color == color }
    checkables = pieces.select {|piece| piece.checkable_moves.length > 0}
    uncheckables = pieces.select {|piece| piece.uncheck_moves.length > 0}
    display.render

    if game.board.in_check?(color) && uncheckables.length > 0
      piece = uncheckables.sample
      [piece.pos, piece.uncheck_moves.sample]
    elsif checkables.length > 0
      piece = checkables.sample
      [piece.pos, piece.checkable_moves.sample]
    elsif attackables.length > 0
      attackables.sample
    else
      options.sample
    end
  end
end
