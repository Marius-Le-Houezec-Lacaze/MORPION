require_relative 'board_case'
require_relative 'show'

require 'pry'

class Board
  attr_accessor :board, :count_turn, :pos
  def initialize
    @board = []
    @count_turn = 0
    9.times do |i|
      @board << BoardCase.new(i)
    end
  end

  def play_turn(who)
    @count_turn += 1
    print "Joueur #{who.name} c'est votre tour\n>"
    if who.value == "X"
      i = gets.chomp
      (@board[i.to_i].status == " ")? 
      (@board[i.to_i].status = "X"): 
      (puts "vous ne pouvez pas placer ca ici")
      who = 2
    else
      who = 1 
      i = gets.chomp
      (@board[i.to_i].status == " ")? 
      (@board[i.to_i].status = "O"): 
      (puts "vous ne pouvez pas placer ca ici")
    end
  end

  def victory?
    i = 0
    c = 0
    ret = true
    ret2 = true
    while i < 8
      str = ""
      @board[i.. 2 + i].each { |w| str.concat(w.status)}
      (str.to_s == "XXX" || str.to_s == "OOO")? (ret = false) : (ret = true)
      i += 3
      (ret == false)? (i = 8):nil
    end
    while c < 3
      str = ""
      @board.values_at(0 + c, 3 + c, 6 + c).each { |w|  str.concat(w.status)}
      (str == "XXX" || str == "OOO")? (ret2 = false) : (ret2 = true)
      c += 1
      (ret2 == false)? (c = 3):nil
    end
    if @board.values_at(0, 4, 8).to_s.count("X") == 3
      ret = false
      str = "X"
    end
    if @board.values_at(0, 4, 8).to_s.count("O") == 3
      ret = false
      str = "O"
    end
    if @board.values_at(2, 4, 6).to_s.count("X") == 3
      ret = false
      str = "X"
    end
    if @board.values_at(2, 4, 6).to_s.count("O") == 3
      ret = false
      str = "O"
    end
    (ret == false || ret2 == false )? (return [false, str[0]]): (return [true, "testaa"])
  end
end

