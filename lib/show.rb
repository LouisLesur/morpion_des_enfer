require 'pry'

require_relative 'application'

class Show
  attr_accessor :complete

  def initialize
    @complete = Application.new
  end

  def board
    board.show_symb("1")
    print " | "
    board.show_symb("2")
    print " | "
    board.show_symb("3\n")

    print "_1"
    print "|__2"
    print "|__3\n"

    board.show_symb("4")
    print " | "
    board.show_symb("5")
    print " | "
    board.show_symb("6\n")

    print "_4"
    print "|__5"
    print "|__6\n"

    board.show_symb("7")
    print " | "
    board.show_symb("8")
    print " | "
    board.show_symb("9\n")

    print " 7"
    print "|  8"
    print "|  9"

  end

end

binding.pry

puts "end of file"
