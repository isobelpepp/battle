class Player 
  
  DEFAULT_HP = 60

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def receive_damage
    @hit_points -= 10
  end

end
