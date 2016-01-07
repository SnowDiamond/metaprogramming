require 'delegate'

class Hero

  attr_reader :damage

  def initialize(damage)
    @damage = damage
  end

end

class SuperHero < SimpleDelegator

  def super_damage
    damage * 2
  end
end
