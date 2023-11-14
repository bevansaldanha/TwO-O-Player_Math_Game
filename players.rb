class Player
  attr_accessor :lives, :turn, :name
  def initialize(n)
    @name = n
    @lives = 3
    @turn = false
  end
end