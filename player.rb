class Player

  attr_accessor :player_moves

  def initialize(name, symbol)
    @name = name
    @player_moves = Array.new(5)
    @symbol = symbol
  end

  def make_a_move(symbol, place, x, y)
    place[x][y] = symbol
  end
end