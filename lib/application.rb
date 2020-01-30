require_relative 'game'

class Application
  attr_accessor :game

  def initialize
    puts "Entrez le nom du player1"
    print "> "
    player1_name = gets.chomp
    puts "Entrez le nom du player2"
    print "> "
    player2_name = gets.chomp
    @game = Game.new(player1_name, player2_name)
  end

  def starting_player
    result = rand(1..2)
    if result == 1
      player1 = 1
      player2 = 2
    else
      player1 = 2
      player2 = 1
    end
  end

  def the_game(player1, player2)
    puts "Le joueur qui commence est choisie au hasard."
    starting_player
    if player1 == 1
      puts "C'est le joueur #{@player1.name} qui commence."
      loop do
        puts "C'est au tour de #{@player1.name} de jouer"
        puts "Veuillez entrer le nom de la case choisis  :"
        print "> "
        case_chosen = gets.chomp.to_s
        turn_player1(case_chosen)
        @game.win_combination
        break if n == 3 || n == -3
        puts "C'est maintenant au tour de #{@player2.name} de jouer"
        puts "Veuillez entrer le nom de la case choisis  :"
        print "> "
        case_chosen = gets.chomp.to_s
        turn_player1(case_chosen)
        break if n == 3 || n == -3
      end
    else
      puts "C'est le joueur #{@player1.name} qui commence."
      loop do
        puts "C'est au tour de #{@player2.name} de jouer"
        puts "Veuillez entrer le nom de la case choisis  :"
        print "> "
        case_chosen = gets.chomp.to_s
        turn_player1(case_chosen)
        break if n == 3 || n == -3
        puts "C'est maintenant au tour de #{@player1.name} de jouer"
        puts "Veuillez entrer le nom de la case choisis  :"
        print "> "
        case_chosen = gets.chomp.to_s
        turn_player1(case_chosen)
        break if n == 3 || n == -3
      end
    end
    if n == 3
      puts "Le joueur #{player1.name} a gagner !"
    elsif n == -3
      puts "Le joueur #{player2.name} a gagner !"
    else
      puts "C'est un match nul !"
    end
  end
end
