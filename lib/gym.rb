class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|m| m.gym == self}
  end

  def gym_goers
    memberships.map{|m| m.lifter}
  end

  def average_lift_total
    gym_goers.map{|l| l.lift_total }.sum / gym_goers.length
  end
end
