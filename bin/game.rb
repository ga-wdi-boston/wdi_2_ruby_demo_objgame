require 'pry'
require_relative '../lib/player'
puts "Starting the game!!!!"

binding.pry
jack = Person.new('Jack', 'Sparrow')

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brendzel")
puts "game man's health is #{game_man.health}"