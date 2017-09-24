
class BankAcount

	attr_writer :customer_name,:type,:acct_number
	#attr_accessor :customer_name,:type,:acct_number
	# 他から参照することができない、変更のみ

	def initialize(customer_name,type,acct_number)
		@customer_name = customer_name
		@type = type
		@acct_number = acct_number.gsub(/\d{3}-\d{2}(\d{1})-(\d{3})/,'***** \1\2')
	end

	def to_s
		 "#{@customer_name}: #{@type}# #{@acct_number}"
	end



end

account = Bank.new
# attr_reader name = "hello"
account.name => "hello"
account.name = "new name" => error

# attr_writer name
account.name => error
account.name = "new name" => "new name"

# attr_accessor name


my_acct = BankAcount.new("Junipero Serra", "Checking", "347-923-239")
#p my_acct
p my_acct.to_s
#p my_acct
p str = "My account information is #{my_acct}"



# class Car
#  attr_accessor :name, :color  
#  def initialize(name, color)
#   @name = name
#   @color = color
#  end
#  def info 
#  puts "名前: #{@name} 色: #{@color}"
#  end
# end