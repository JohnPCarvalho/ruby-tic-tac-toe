require './board'
require './player'

class Game
  def initialize(board)
    # @board = board
    @player1 = Player
    @player2 = Player
    @win = false
    @player_turn = Player
    @turn = 1
  end

  def self.start_game()
    board = Board.new
    game = Game.new(board)
    board.show_board

    print "This is the turn number #{@turn}!"
    while @win != true do
      puts "#{@player1.name}, make your move!"
      p1_move = gets.chomp
      @player1.make_a_move(@player1.symbol, @board, 1, 1)
      @board.show_board
    end

    # instancia o game (com o board e os dois jogadores)
    # mensagem: The game has begun!
    # mostra: @turn

    # roda enquanto @win = false (apenas o método check_board poderá mudar o valor para true ao determinar a vitória)
    # if @turn < 5
    # executa parte do jogo
    # else
    # executa o restante do jogo checando o board?

    # pergunta a primeira jogada do player1
    # recebe as coordenadas (colocar error handling para as coordenadas)
    # nas coordenadas, registra no board o symbol do player
    # soma @turn (@turn += 1)
    # pergunta a jogada do player2
    # recebe as coordenadas (colocar error handling para coordenadas)
    # nas coordenadas, registra no board o symbol do player
    # registra a jogada do player em player.player_moves
    # soma @turn (@turn += 1)
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

  def change_turn(player)
    @turn = player
  end

  def stop_game; end

  def check_board
    # irá procurar
  end

  def check_move
    # verifica se a jogada foi válida
  end
end

Game.game_starter
