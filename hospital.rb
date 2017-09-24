#class:hospital


class Hospital

#attr_reader = 

	def  initialize

		@username = ""
		@password = ""
		@level = ""

	end

	def login

		puts "Welcome to Misty River Hospital"
		puts "__" * 5
		puts "Please enter your username:"
		@username = gets.chomp
		puts "Please enter your password:"
		@password = gets.chomp
		puts "__" * 5

	end

	def check

		while /[a-z]/ === @password

			puts " Please, login again "
			@password = gets.chomp
		 	
		 end 

		if  @password =~ /[1]\d{3}/
		       @level = "DOCTOR"
		    elsif  @password =~ /[2]\d{3}/
			   @level = "NURSE"
		          elsif @password =~ /[3]\d{3}/
			         @level = "PHARMACIST"
		end 			
		
		puts "Welcome, #{@username}. Your access level is: #{@level}"
		puts "__" * 5
	end

end

class Patient

	def
		
	end

end


class Employee

	def working
		puts "What wold you like to do?"
		
	end

	
end


#######################################################################
## Driver code:

hospital = Hospital.new
hospital.login
hospital.check

