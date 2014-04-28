require_relative 'person'

class Player < Person

  # Create Class Constants
  DEFAULT_HEALTH = 20
  DEFAULT_STRENGTH = 5
  
  attr_reader :health, :strength

  def initialize(first_name, last_name)
    # Call the Person#initialize
    super(first_name, last_name)
    @health  = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
  end

  def alive?
    # Shortest, most concise
    health > 0
  end

  # Decrease players health
  def take_damage(attack_strength)
    @health -=  attack_strength
  end

  # Attack another player with this players strength
  def attack(opponent)
    opponent.take_damage(strength)
  end

end






