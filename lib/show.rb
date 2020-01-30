require_relative 'board'
# frozen_string_literal: true

# Cette fonction sers simplement a afficher la grille de Morpion
class Show
  def show_board(cas)
    puts 'Entrer le numero de la case:'
    puts ' ┌───┬───┬───┐'
    puts "A│ #{cas.board[0].status} │ #{cas.board[1].status} │ #{cas.board[2].status} │"
    puts ' ├───┼───┼───┤'
    puts "B│ #{cas.board[3].status} │ #{cas.board[4].status} │ #{cas.board[5].status} │"
    puts ' ├───┼───┼───┤'
    puts "C│ #{cas.board[6].status} │ #{cas.board[7].status} │ #{cas.board[8].status} │"
    puts ' └───┴───┴───┘'
    puts '   1   2   3'
  end
end
