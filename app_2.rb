require 'bundler'
Bundler.require

require_relative 'lib/player'

puts ' -------------------------------------------------'
puts ' |Bienvenue mon couzin dans Le JEU DE LA BAGARRE |' 
puts ' |LA CALOTTE DE SON CAVEAU A JOSIANE ET JOSE     |'
puts ' |METS DES CALOTTES ET RESTE DEBOUT MON COPAIN   |'
puts ' -------------------------------------------------'

puts "Mon couzin c'est quoi ton blaze?"
print ">"
name_of_jean_player = gets.chomp
jean_player = HumanPlayer.new(name_of_jean_player)
player1 = Player.new("Josiane")
player2 = Player.new("José")

while jean_player.life_points > 0 && (player1.life_points >0 || player2.life_points > 0)
  puts "La bagarre de ses ayeux entre:"
  jean_player.show_state
  player1.show_state
  player2.show_state
  
  puts "Tu vas faire quoi ?"
  puts "a - Chercher une meilleure pétoule"
  puts "s - Chercher le toubib"
  puts "mettre une calotte à :"
  
  if player1.life_points > 0
    puts "0 - Josiane a #{player1.life_points} pv"
  end
  if player2.life_points > 0
    puts "1 - José a #{player2.life_points} pv"
  end
  print "Le choix du couz  :"
  choice = gets.chomp
  case choice
  when "a"
    jean_player.search_weapon
  when "s"
    jean_player.search_health
  when "0"
    if player1.life_points > 0
      jean_player.massive_attack(player1)
    else
      puts "Non, cousin, la Josiane elle est finie !"
    end
  when "1"
    if player2.life_points > 0
      jean_player.massive_attack(player2)
    else
      puts "Le José c'est finito"
    end
  end
  
  puts "Les autres mange-morts te charge !!!"
  [player1, player2].each do |player|
    if player.life_points > 0
      player.massive_attack(jean_player)
    else
      puts " Le #{jean_player.name} t'es finito, tu peu plus charger le bouzin !"
  end
end

puts "La partie c'est la fin"
if jean_player.life_points > 0
  puts "BRAVO COUZIN C'est la gagne de la bagarre!"
else
  puts "C'est la fin poto je vais t'enterrer sous la caravane"
end
end
binding.pry
