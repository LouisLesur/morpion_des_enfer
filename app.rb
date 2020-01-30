require 'bundler'
Bundler.require

require_relative 'lib/application'

def game
  Application.new
end

def board
  @game.show_symb("1")
  print " | "
  @game.show_symb("2")
  print " | "
  @game.show_symb("3\n")

  print "_1"
  print "|__2"
  print "|__3\n"

  @game.show_symb("4")
  print " | "
  @game.show_symb("5")
  print " | "
  @game.show_symb("6\n")

  print "_4"
  print "|__5"
  print "|__6\n"

  @game.show_symb("7")
  print " | "
  @game.show_symb("8")
  print " | "
  @game.show_symb("9\n")

  print " 7"
  print "|  8"
  print "|  9"
end

def go_gamers
  game
  board
end

binding.pry

puts "end of file"
