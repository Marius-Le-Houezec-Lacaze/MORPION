require_relative 'game'

class Application
  def perform

    current_game = Game.new
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    
    while true do
      while current_game.on_going == true
        current_game.turn 
      end
      current_game.game_end
      current_game.new_round
    end
  end
end

app = Application.new

app.perform