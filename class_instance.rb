class Student


	def lunch #class or instance method
		#method? -- its instance method
		#because it is applied on alex the instance object
		return Student.gender

	end

	def self.gender #class method,self
		return self.class
		
	end
