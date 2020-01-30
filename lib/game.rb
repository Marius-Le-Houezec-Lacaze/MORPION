require_relative 'board_case'
require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
  attr_accessor :player1, :player2, :my_board, :on_going, :show, :current_player, :arr_play, :victory
  def initialize
    system("clear")
    @my_board = Board.new
    print "Joueur 1 donner votre nom \n>"
    @player1 = Player.new(gets.chomp, "X")
    print "Joueur 2 donner votre nom \n>"
    @player2 = Player.new(gets.chomp, "O")
    @arr_play = []
    @arr_play << player1
    @arr_play << player2   
    @on_going = true
    @show = Show.new
    @victory = [0, 0]
  end

  # Cette function gere les tour et coordone les autre function
  def turn
    @arr_play.each do |play|
      system("clear")
      @show.show_board(self.my_board)
      @my_board.play_turn(play)
    end
    @on_going =  @my_board.victory?[0]
  end

  # Cette fonction permet de demarer une nouvelle partie sans perdre les joueur
  def new_round
    system("clear")
    print "Souhaiter vous jouer une autre partie ?\nEntrer oui ou non \n>"
    choice = gets.chomp
    if choice == "oui"
      @my_board = nil
      @my_board = Board.new
      @on_going = true
    elsif choice == "non"
       exit
    else
       self.new_round
    end
  end

  # Cette function affiche les message de fin et de match nul
  def game_end
    system("clear")
    victor = @my_board.victory?[1]
    if victor == "X"
      @show.show_board(self.my_board)
      victory[0] += 1
      puts "Nombre de victoire:"
      puts "#{player1.name}:#{victory[0]}\n#{player2.name}:#{victory[1]} "
      puts "Felicitation #{player1.name} a gagner !"
    elsif victor == "O"
      victory[1] += 1
      @show.show_board(self.my_board)
      puts "#{player1.name}:#{victory[0]}\n#{player2.name}:#{victory[1]} "
      puts "Felicitation #{player2.name} a gagner !"
    else
      @show.show_board(self.my_board)
      puts "Match nul"
    end
    puts "Appuyer sur " + "ENTRER".colorize(:red) + " pour continuer"
    gets.chomp
  end    
end
