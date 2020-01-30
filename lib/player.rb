# frozen_string_literal: true

# Cette class permet de stocker les information lier au joueur
class Player
  attr_reader :name, :value
  def initialize(nom, val)
    @name = nom
    @value = val
  end
end
