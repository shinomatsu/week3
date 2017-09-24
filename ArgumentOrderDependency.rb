class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost
   
   # use namedWrgument ex) def welcome_message(message, name: 'John') 

  # def initialize(address, square_feet, num_bedrooms = 3, num_baths = 2, cost = 320_000, down_payment = 0.20, sold = false, has_tenants = false)
  #   @address = address
  #   @square_feet = square_feet
  #   @num_bedrooms = num_bedrooms
  #   @num_baths = num_baths
  #   @cost = cost
  #   @down_payment = down_payment
  #   @sold = sold
  #   @has_tenants = has_tenants
  # end

  def initialize(components = {})

    @address = components[:address]
    @square_feet = components [:square_feet]
    @num_bedrooms = components [:num_bedrooms] || 3
    @num_baths = components [:num_bedrooms] || 2
    @cost = components [:cost] || 320_000
    @down_payment = components [:down_payment] || 0.20
    @sold = components [:sold] || false
    @has_tenants = components [:has_tenants] || false

  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end

end

house = House.new(address:"AAAA",square_feet:1000)
p house
p house.obscure_address
p house.buy!(3000,3000)
p house.down_payment
