class Player
  attr_accessor :name, :life_point
  def initialize(name, life_points = 10)
    @name = name
    @life_points = life_points
  end
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end
  def gets_damage(damage_took)
    @life_points -= damage_took
    @life_points <= 0 ? (puts "le joueur #{@name} a été Kill !") : show_state   # if @life_points <= 0
  end                                                                           #  puts "le joueur #{@name} a été Kill !"
end                                                                             #else
                                                                                #  show_state
                                                                                #end