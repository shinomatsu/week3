# What is Object Oriented Programming?
#
# Programming consists of:
#   1. Data (e.g. strings, integers, arrays)
#   2. Operations (e.g. methods)

# Data

numbers = [1,2,3]
person = {
  name: 'Ping',
  email: 'ping@nextacademy.com'
}

# Methods
def average(x, y)
  (x + y)/2
end

#######

# Inheritance
# A child class can inherit all data/behavior from its parent class

class Tree
  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
  end

  def grow!
    raise NotImplementedError, 'You must implement the grow! method'
  end
end

class OrangeTree < Tree
  def grow!
    @height += 10
  end
end

class MapleTree < Tree
  def grow!
    @height += 5
  end
end

orange_tree = OrangeTree.new
p orange_tree
orange_tree.grow!
p orange_tree

puts "---------------------"
maple_tree = MapleTree.new
p maple_tree
maple_tree.grow!
p maple_tree

#######

class Salesperson
  def comission
    @revenue * 0.05
  end

  def salary
    2000 + comission
  end
end

class Programmer
  def salary
    3000
  end
end

employee_one = Salesperson.new
employee_two = Programmer.new

all_employees = [employee_one, employee_two]

sum_salaries = 0
all_employees.each do |employee|
  sum_salaries += employee.salary
end

# both Salesperson and Programmer implement salary method
# both salary methods return an integer

#######

# Duck typing
# ダックタイピング

# Objects should only know about the
#   public interface of other objects,
#   everything private is hidden!
#
# As long as two object responds the same way to the same methods,
# you can consider them the same object for that line of code

# example
class OrangeTree
  def initialize
    @height = 0
  end

  def grow!
    @height += 10
    # puts "It has grown!"
  end
end

class MapleTree
  def initialize
    @height = 0
  end

  def grow!
    @height += 5
    # puts "It has grown!"
  end
end

#both tree function the same based only on what is printed out
#both trees function very differently internally
#二つのオブジェクト
#同じ名前のメソッド、ファンクションは異なる
#もしメソッド名が違ったなら、同じくeachでは扱えない

farm = []
farm << OrangeTree.nsew
farm << MapleTree.new
farm.each do |tree|
  tree.grow!
  p tree
end

# Another way of implementing duck typing
class FarmFairy
  def grow(tree)
    tree.grow!
  end
end

orange_tree = OrangeTree.new
maple_tree  MapleTree.new
fairy = FarmFairy.new
fairy.grow(maple_tree)

#####

# Composition solves this by
#   making objects composed of other objects

class Laptop
  attr_reader :screen, :keyboard

  def initialize
    @screen = Screen.new
    @keyboard = Keyboard.new
  end
end

class Screen
  attr_reader :size, :brightness

  def initialize
    @brightness = 50
  end

  def make_it_brighter
    @brightness += 10
  end
end

class Keyboard
end

macbook = Laptop.new
p macbook

# Example of Laptop object you'll get
# It contains Screen object and Keyboard object as attributes
# <Laptop:0x007ff10984ae70
#   @screen= <Screen:0x007ff10984ae48 @brightness=50>,
#   @keyboard= <Keyboard:0x007ff10984ae20>>

# Compared to inheritance
class Phone
  attr_reader :brand
  def initialize(brand)
    @brand = brand
  end
end

class Smartphone < Phone
end

phone = Smartphone.new('Samsung')
p phone

