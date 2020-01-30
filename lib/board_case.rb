require 'pry'

# Cette classe contient les information sur les case de jeux
class BoardCase
  attr_accessor :index, :status
  def initialize(i)
    @index = i
    @status = " "
  end
end