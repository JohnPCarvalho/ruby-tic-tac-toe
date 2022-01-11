require './board.rb'
require './player.rb'

class Game

    def initialize(board, player1, player2)
      @board = board,
      @player1 = player1
      @player2 = player2
      @win = false
      @player_turn = player1
      @turn = 1
      @cross = 'x'
      @cirle = 'o'
    end
    
    def start_game
    # pergunta o nome do jogador1
    # pergunta o símbolo usado (se cross ou cirle)
    # pergunta o nome do jogador2
    # atribui o símbolo que restou
      # instancia jogadores
        
    # instancia board
      # show_board
    # instancia o game (com o board e os dois jogadores)
    # mensagem: The game has begun!
    # mostra: @turn

    # roda enquanto @win = false (apenas o método check_board poderá mudar o valor para true ao determinar a vitória)

      # pergunta a primeira jogada do player1
        # recebe as coordenadas (colocar error handling para as coordenadas)
        # nas coordenadas, registra no board o symbol do player
    end

    private

    def change_turn(player)
      @turn = player
    end

    def stop_game
    end

    def check_board
      # irá procurar
    end

    def check_move
      # verifica se a jogada foi válida
    end

    # instancia jogadores
    # instancia board
    # instancia o game (com o board e os dois jogadores)

end

board = Board.new
player1 = Player.new('Johnny', 'X')
player2 = Player.new('Lais', 'O')