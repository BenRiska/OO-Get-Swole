class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|m| m.lifter == self}
  end

  def total_membership_cost
    memberships.map{|m| m.cost}.sum
  end

  def self.average_lift_total
    @@all.map{|l| l.lift_total}.sum / @@all.length
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end
end
