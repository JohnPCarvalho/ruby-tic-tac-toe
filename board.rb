class Board
  def initialize()
    @board = Array.new(3) { Array.new(3) { '' } }
  end

  def show_board()
    @board.each  do |line|
      print "#{line} \n"
    end
  end
end
