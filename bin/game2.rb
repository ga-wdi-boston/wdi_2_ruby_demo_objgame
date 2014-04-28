require 'pry'
require_relative '../lib/knight'
require_relative '../lib/wizard'

puts "Starting the game!!!!"


jane_knight = GAGame::Knight.new("Jane", "Night")
alex = GAGame::Wizard.new("Alex", "Grant")
alex.say_spell(jane_knight)









