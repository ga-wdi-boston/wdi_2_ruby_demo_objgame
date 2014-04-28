require 'pry'
require_relative '../lib/player'
puts "Starting the game!!!!"

jack = Person.new('Jack', 'Sparrow')

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brendzel")
puts "game man's health is #{game_man.health}"

puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

#game_man.take_damage(30)
puts "Game man health is #{game_man.health} "
puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")


code_man = Player.new("Tom", "Dyer")
while( game_man.alive?)
  puts "code man attacks game man"
  # ATTACK GAME MAN, HE BAD, ME GOOD
  code_man.attack(game_man)
  puts "Game man health is #{game_man.health} "
  puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
end

puts "Game Man has been vanquished"











