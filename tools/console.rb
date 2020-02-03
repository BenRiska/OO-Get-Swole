# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

bob = Lifter.new('bob', 30)
joe = Lifter.new('joe', 60)
sam = Lifter.new('sam', 90)

gym1 = Gym.new('gym1')
gym2 = Gym.new('gym2')
gym3 = Gym.new('gym3')

bronze = Membership.new(10, bob, gym1)
silver = Membership.new(20, joe, gym2)
gold = Membership.new(30, sam, gym3)

bob.sign_up(gym2, 20)


binding.pry

puts "Gains!"
