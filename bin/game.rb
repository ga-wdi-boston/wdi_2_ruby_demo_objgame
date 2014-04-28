require 'pry'
require_relative '../lib/player'
puts "Starting the game!!!!"

jack = Person.new('Jack', 'Sparrow')

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brendzel")
puts "game man's health is #{game_man.health}"

puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

game_man.take_damage(30)
puts "Game man health is #{game_man.health} "
puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

