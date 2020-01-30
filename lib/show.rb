require_relative 'board'

class Show
  def show_board(b)
    puts "Entrer le numero de la case:"
    puts "┌───┬───┬───┐"
    puts "│ #{b.board[0].status} │ #{b.board[1].status} │ #{b.board[2].status} │"
    puts "├───┼───┼───┤"
    puts "│ #{b.board[3].status} │ #{b.board[4].status} │ #{b.board[5].status} │"
    puts "├───┼───┼───┤"
    puts "│ #{b.board[6].status} │ #{b.board[7].status} │ #{b.board[8].status} │"
    puts "└───┴───┴───┘"
  end
end