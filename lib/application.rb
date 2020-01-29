require_relative 'game'

class Application
  def perform

    current_game = Game.new
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    while current_game.on_going == true
      current_game.turn 
    end
  end
end

app = Application.new

app.perform