require './board'
require './player'

class Game
  attr_accessor

  def initialize(board)
    @board = board
    @player1 = Player
    @player2 = Player
    @win = false
    @current_player = Player
  end

  def self.game_starter
    puts 'What is the name of the first player?'
    p1_name = gets.chomp
    puts 'What is the name of the second player?'
    p2_name = gets.chomp

    puts "Player 1, choose your symbol between 1 - 'X' or 2 - 'O'. The other symbol will be assigned to your opponent."
    p1_symbol = gets.chomp
    p2_symbol = ''

    if p1_symbol == 'X'
      p2_symbol = 'O'
    elsif p1_symbol == 'O'
      p2_symbol = 'X'
    else
      puts 'incorrect symbol'
    end

    @player1 = Player.new(p1_name, p1_symbol)
    @player2 = Player.new(p2_name, p2_symbol)
    puts "The players are the mighty #{@player1.name} and #{@player2.name}!!"
    Game.start_game
  end

  def self.start_game()
    turn = 1
    board = Board.new
    game = Game.new(board)
    board.show_board

    print "This is the turn number #{turn}! \n"

    while @win != true do

      if turn % 2 != 0
        @current_player = @player1
      else
        @current_player = @player2
      end

      puts "#{turn}"
      puts "#{@current_player.name}, make your move! \n"
      game.make_a_move(@current_player)
      board.show_board
      game.check_board(board, @current_player.symbol)
      turn += 1
    end
  end

  def change_turn(player)
    @turn = player
  end

  def stop_game; end

  def check_board(player_symbol)
    count = 0
    # horizontal check
    @board.board.each_with_index do |item1, index1|
      @board.board.each_with_index do |item2, index2|
        if @board.board[index1][index2] == player_symbol
          count += 1
        end
    end
  end

  def make_a_move(player)
    x = nil
    y = nil
    move_done = false

    while move_done == false do
      puts "Type first position: \n"
      x = gets.chomp.to_i
      puts "Type second position: \n"
      y = gets.chomp.to_i

      if (0..2).include?(x) || (0..2).include?(y)
        if @board.board[x][y] != ""
          "Invalid move. The houses [#{x}][#{y}] are already populated"
        else
          @board.board[x][y] = player.symbol
          move_done = true
        end
      else
        puts "Invalid numbers. They must be 0, 1 or 2"
      end
    end
  end

  def check_move
  end
end

Game.game_starter
