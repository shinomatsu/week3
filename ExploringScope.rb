# # class BasicClass
# #   def initialize
# #     @instance_var = "ruby"
# #   end
 
# #   def get_instance_var
# #     p   @instance_var 
# #   end
  
# #   def set_instance_var=(str)
# #      p  @instance_var =  str
# #   end
# # end

# # foo = BasicClass.new

# # foo.get_instance_var
# # #>>"ruby"  
# # p foo
# # #>>#<BasicClass:0x0055a002b44ab8 @instance_var="ruby">
# # foo.set_instance_var = 'some other value'
# # #>>'some other value'
# # p foo
# # #>>#<BasicClass:0x0055a002b44ab8 @instance_var='some other value'>
# # foo.get_instance_var 
# # #>>"ruby"   
# # p foo
# # p foo
# # #>>#<BasicClass:0x0055a002b44ab8 @instance_var="ruby">
# # #not change "@instance_var "

#  class BasicClass
  
#     @@instance_var = "ruby"
  
 
#   def get_instance_var
#     p   @@instance_var 
#   end
  
#   def set_instance_var=(str)
#      p  @@instance_var =  str
#   end
# end

# foo = BasicClass.new
# foo.get_instance_var
# foo.set_instance_var = 'some other value'

# class Person
# 	@@size = 0
# 	FEMALE = :female
# 	MALE = :male

# def self.male(name, age)
# 	new(name,age,MALE)
# end

# def self.male(name,age)
# 	new(name,age,FEMALE)
# end

# def self.size
# 	@@size
# end

# def initialize(name,age,sex)
# 	@@size += 1
# 	@name,@age,@sex = name , age, sex
# end

# def hello
# 	puts <<- EOS
# hello.
# "I am #{@name}"
# "My age is #{@age}"
# "Gender is #{@sex}"
# EOS
# end
# end

class Person
      def self.example_class_method
        puts "We're calling an example class method"
        puts "'self' is always defined. What is 'self' here? Let's see."
        p self
        puts "That was self!"
      end

      def example_instance_method
        puts "We're calling an example *instance* method"
        puts "'self' is defined here, too, but it means something different."
        p self
        puts "That was self, again, but see how it's an instance of the class."
      end
 end
#Person.example_class_method
#Person.new.example_instance_method

class Person
    puts "You'll see this as the class is being defined."
    puts "In this context, self is:"
    p self
    puts "See? self is the Person class"
end

class Mathmatics
	def self.hypot(a,b)
		sqrt(x*+2 + y**2)
	end
end


class Mathmatics
	def athmatics.hypot(a,b)
		sqrt(x*+2 + y**2)
	end
end




