class Computer < Player
  def get_move
    sleep(1)
    options = game.board.all_valid_moves(color)
    attackables = options.select {|move| game.board.attackable?(move[1], color)}
    # pieces = game.board.grid.flatten.select {|square| square.occupied?  }
    # checkables = pieces.select {|piece| piece.checkable_moves}
    display.render

    # if checkables.length > 0
    #   checkables.sample
    # els

    if attackables.length > 0
      # puts "The AI is moving!"
      attackables.sample
    else
      # puts "The AI is moving!"
      options.sample
    end
  end
end
