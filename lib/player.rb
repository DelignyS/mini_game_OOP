class Player
  attr_accessor :name, :life_point
  def initialize(name, life_point = 10)
    @name = name
    @life_point = life_point
  end
end