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

end

binding pry