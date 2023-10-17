class Player
  attr_accessor :name, :life_points
  def initialize(name, life_points = 10)
    @name = name
    @life_points = life_points
  end
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end
  def gets_damage(damage_took)
    @life_points -= damage_took
    @life_points <= 0 ? (puts "le joueur #{@name} a été Kill !") : show_state   # if @life_points <= 0   puts "le joueur #{@name} a été Kill !"  else show_state
  end
  def compute_damage
    return rand(0..6)
  end
  def massive_attack(others)
    puts "le joueur #{@name} attaque #{others.name}"
    damages = compute_damage
    others.gets_damage(damages)
    puts "et il lui inflige #{damages} points de dommages"
  end
end                                                                             
                                                                                
                                                                      