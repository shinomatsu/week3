# Start coding here.
#アニマルが親クラス

class Animal 

  attr_reader = :name ,:num_legs, :warm_blood

  def initialize (name)
  	@name = name
    @num_legs  = 0
    @warm_blood = "warm_blood"
    #@weight = weight
  end

  def form
  	

  	if @warm_blood == "warm_blood"
  		"name:#{@name},legs:#{@num_legs},#{@warm_blood}"
  	else
  		"name:#{@name},legs:#{@num_legs},cold_blood"
  	end

  end

 end


class Mammal < Animal

	def initialize(name)
		super
		@num_legs += 4
	end

end


class Amphibian < Animal

	#attr_reader = :num_legs, :warm_blood

	def initialize(name)
		super
		@num_legs += 4
		@warm_blood = false 

	end

end


class Primate < Mammal

	def initialize(name)
		super
	
	end

end

class Frog < Amphibian

	def initialize(name)
		super
	
	end

end

class Bat < Mammal

	#attr_reader = :num_legs, :warm_blood

	def initialize(name)
		super
		@num_legs += 1
	
	end

end

class Chimpanzee < Primate

	def initialize(name)
		super
	end


end


animal = Animal.new("animal")
p animal.form
mammal = Mammal.new("mammal")
p mammal.form
amphibian = Amphibian.new("amphibian")
p amphibian.form
primate = Primate.new("primate")
p primate.form
bat = Bat.new("bat")
p bat.form
chimpanzee = Chimpanzee.new("chimpanzee")
p chimpanzee.form


