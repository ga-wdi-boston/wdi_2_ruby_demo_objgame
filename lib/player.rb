require_relative 'person'
# require the Talker module
require_relative 'talker'

module GAGame
  class Player < Person

  # Mixin the Talker module
  # This will inject/mixin/add all the methods in the 
  # Talker module into this class.
  include Talker

  # Create Class Constants
  DEFAULT_HEALTH = 20
  DEFAULT_STRENGTH = 5
  
  attr_reader :health, :strength

  def initialize(first_name, last_name)
    # Call the Person#initialize
    super(first_name, last_name)
    @health  = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH

    talk("Created #{full_name}")
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
    if alive?
      opponent.take_damage(strength) 
      talk("#{full_name} is attacking #{opponent.full_name}")
    else
      talk "Hey, you #{last_name} you dead WTF!!"
    end
  end

end

end




