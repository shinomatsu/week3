# This is how you define your own custom exception classes
# module OrangeSurvivalRate

#   def rate
#     p @orange_on_tree.count
#     rand(1..3).times do
#       byebug
#       @orange_on_tree.shift
#       end

#       p "____"
#       p @orange_on_tree.count
    
#    
require 'byebug'

module OrangeSurvivalRate #calculation/math/percentage
  def rate

    p "initial oranges_count:"+ @oranges_on_tree.count.to_s
    rand(1..3).times{@oranges_on_tree.shift}
    p "survived oranges_count:"+ @oranges_on_tree.count.to_s
  end

end




class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :height, :oranges_on_tree

  def initialize

  @age = 0
  @height = rand(1..3)
  @oranges_on_tree =[]

  end

  def age!
    @age += 1
    @height += rand(10..50)

    rand(0..3).times do
      @oranges_on_tree << Orange.new

    end

  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?

    return true if @oranges_on_tree.count >= 1
    return false if @oranges_on_tree.count == 0 

  end

  # Returns an Orange if there are any
  # Raises a NoOrangesEßrror otherwise
  def pick_an_orange!

    return @oranges_on_tree.shift if @oranges_on_tree.count >= 1
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # orange-picking logic goes here
    # ooranges_on_tree - array, how many oranges tree

  end

  def dead?
   return true if @age >= 5
  end

end


class Orange
  # Initializes a new Orange with diameter +diameter+
  attr_accessor :diameter
  def initialize
    @diameter = rand(1..5)
  end

end

#######################################################################
## Driver code:

    tree = OrangeTree.new

    tree.age! until tree.any_oranges?

    puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

    until tree.dead?
      basket = []

      # It places the oranges in the basket
      while tree.any_oranges?
        basket << tree.pick_an_orange!
      end

      avg_diameter = # It's up to you to calculate the average diameter for this harvest.

      puts "Year #{tree.age} Report"
      puts "Tree height: #{tree.height} feet"
      puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
      puts ""


      # Age the tree another year
      tree.age!
    end

      puts "Alas, the tree, she is dead!"

