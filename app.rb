require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "À ma droite 'Josiane'"
player1 = Player.new("Josiane")

puts "À ma gauche 'José'"
player2 = Player.new("José")

puts "Voici l'état de nos joueurs :"
player1.show_state
player2.show_state

while player1.life_points > 0 && player2.life_points > 0
  puts "Passons à la phase d'attaque :"
  player1.massive_attack(player2)
  break if player2.life_points <= 0
  player2.massive_attack(player1)
  puts "Voici l'état de nos joueurs :"
  player1.show_state
  player2.show_state
end

binding.pry