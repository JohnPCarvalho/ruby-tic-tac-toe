class Player

  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @player_moves = Array.new(5)
    @symbol = symbol
  end
end
