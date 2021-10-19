require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

Player1 = Player.new("😡 Quentin")
Player2 = Player.new("😎 Jean")


while Player1.life_points > 0 && Player2.life_points > 0
    puts "Voici l'état de chaque joueur :" 
    Player1.show_state

    Player2.show_state
    # puts "Passons à la phase d'attaque :"
    Player1.attacks(Player2)
        if Player2.life_points < 0
            break
        end
    sleep(2)
    Player2.attacks(Player1)
        if Player1.life_points < 0
            break
        end
    sleep(3)
end
# binding.pry