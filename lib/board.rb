require_relative 'boardcase'

class Board
  attr_accessor :board, :win_board

  def initialize #Dans cette méthode je créer un array des 9 case qui composeront mon plateau et je leurs attribut un numéro pour les différencié les unes des autres
    a = BoardCase.new("1")
    b = BoardCase.new("2")
    c = BoardCase.new("3")
    d = BoardCase.new("4")
    e = BoardCase.new("5")
    f = BoardCase.new("6")
    g = BoardCase.new("7")
    h = BoardCase.new("8")
    i = BoardCase.new("9")
    @board = [a,b,c,d,e,f,g,h,i]
    @win_board = [[a,b,c] , [d,e,f] , [g,h,i] , [a,d,g] , [b,e,h] , [c,f,i] , [a,e,i] , [c,e,g]] #Ici je creer un array particulier composé des différentes combinaison gagnante du morpion
  end



  def attribution(case_chosen, symbol) #Cette methode est la pour attribuer un symbole a chaque case en fonction de leur position qui est préalablement choisie
    @board.each do |specific_case|
      if specific_case.position == case_chosen
        specific_case.symbol = symbol
      end
    end
  end

  def show_symb(position) #ici j'ai voulu me créer un méthode pour afficher le symbole d'une case en fonction de sa postion rentrer en amont, elle était sensé me servir dans le fichier app.rb pour modifier les case du morpion.
    @board.each do |box|
      if box.position == position
      return box.symb
      end
    end
  end


end
