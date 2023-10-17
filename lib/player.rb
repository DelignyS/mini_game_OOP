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
class HumanPlayer < Player
  attr_accessor :weapon_lvl
  def initialize(name, life_points = 100, weapon_level = 1)
    @weapon_level = weapon_level
    super(name, life_points)
  end
  def show_state
    puts "Mon copain #{@name} a #{life_points} PV, et un canon scié de niv #{@weapon_level}"
  end
  def compute_damage
    super * @weapon_level
  end
  def search_weapon
    new_weapon_level = rand(1..6)
    puts "T'as trouvé un gun de niveau #{new_weapon_level}"
    puts new_weapon_level > @weapon_level ? "C'est meilleur quincaillerie que ton flingue mon copain, ramasse!" : "Mon cousin, c'est caca, tu vas pas mettre des grosses calottes avec ça!"
   end
   def search_health
    health = rand(1..6)
    case health
    when 1
      "Pas bon mon copain, t'as rien"
    when 2..5
      @life_points = (@life_points + 50) > 100 ? @life_points = 100 : @life_points + 50
      "Bravo, sur la tête de mon fils, la chaire de ma chaire t'as trouvé de la gnôle de qualitay mon couz!"
    when 6 
      @life_points = (@life_points + 80) > 100 ? @life_points = 100 : @life_points +80
      "Meilleur que les pépitos chouravés du Leclerc, +80pv mon copain"
    end
   end
end
                                                                                
                                                                      