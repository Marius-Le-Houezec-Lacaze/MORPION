require 'pry'

class BoardCase
  attr_accessor :index, :status
  def initialize(i)
    @index = i
    @status = " "
  end
end