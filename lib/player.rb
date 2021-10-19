require "pry"

class Player
    attr_accessor :name, :life_points, :damage_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    #Affiche le score du joueur
    def show_state
        puts "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(damage)
        # Calcule des coups infligées
        @life_points -= damage
        #Verifie s'il est en vie?
        if life_points < 0
        #Affiche le résultat
        puts "Le joueur #{@name} a été tué 🚑"
        end
    end

    def attacks(player)
        #un joueur lance une attaque sur le joueur en argument
        puts "Le joueur #{@name} attaque #{player.name}"

        #Je fais le lien entre la variable damage et le nb de coups générée
        damage = compute_damage

        #Afficher le résutat
        puts "Il lui inflige #{damage} coups à la gorge 😱"

        #Check s'il reste des points de vie au joueur
        player.gets_damage(damage)
    end

    def compute_damage
        return rand(1..6)
    end

end
# binding.pry