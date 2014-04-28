require_relative 'player'
require_relative 'magic'

module GAGame
  class Wizard < Player
    include Magic

    # CONSTANTS DON'T CHANGE!!!
    DEFAULT_HEALTH = 20
    DEFAULT_STRENGTH = 75

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      # Shortcut
      super
      @health = DEFAULT_HEALTH
      @strength = DEFAULT_STRENGTH
    end

  end # end class
end # end module