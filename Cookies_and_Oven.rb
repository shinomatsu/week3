# Answer These Questions:

# - What are essential classes?
#>> Oven, Cookies
# - What attributes will each class have?
#>> attr_accessor
# - What interface will each class provide?
#>> 
# - How will the classes interact with each other?
#>> 

#クッキーをオーブンに入れる
#>>input cookies to oven
#クッキーを焼く
#>>bake cookies
#クッキーが焼きあがる
#>>baked cookies (enough to beke_need_time) 
#>>bake_time = baked_need_time 
#>>pick uo cookies from oven

#I want to place batches of cookies in an oven（
# ( @cookies_in_oven = [] ）
#I want to know when a batch of cookies is ready to be removed from the oven
#（ return if time =  )


class Oven

	attr_accessor :cookies_in_oven ,:bake_time

	def initialize

		@cookies_in_oven = []
	

	end

	def input_cookies
		puts "what flavour? chocolate or yuzu"

		taste = gets.chomp

		30.times{@cookies_in_oven << Cookie.new(taste)}
		
	end

	def bake

		puts "what is the timer you want to set to shino oven?"
		time = gets.chomp.to_i
		cookie = @cookies_in_oven.shift

		if time > cookie.bake_need_time
			return :burnt
		elsif time < cookie.bake_need_time
			return :doughy
		elsif time < cookie.bake_need_time && time > cookie.bake_need_time/2
			return :almost_ready
		elsif time == cookie.bake_need_time
			return :just_nice
		end
	end

	# def pick_cookies

 #    puts "ok" if @bake_time = @bake_need_time
 #     @bake_time =  @bake_need_time 		
	# end

end

class Cookie

 attr_accessor :taste, :bake_need_time

  def initialize(taste)

  	@taste = taste
  	
  	if @taste == "chocolate"
		@bake_need_time = 15
	elsif @taste == "yuzu" 
  		@bake_need_time = 10
  	end

  end

end



shino_oven = Oven.new

p shino_oven.input_cookies
p shino_oven.bake
# p shino_oven.pick_cookies
