equire 'csv'

class Person
  # Look at the CSV file
  # What attributes should a Person object have?
  # Create Person class such that each row of CSV file represents a particular instance of the Person class. 
  #CSVファイルの各行がPersonクラスの特定のインスタンスを表すように、Personクラスを作成します。
  # What attributes should a P object have?


  def initialize(id,first_name,last_name,email,phone,created_at)

    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at

    @array = []

  end

end

class PersonParser
  attr_reader :file

  def initialize(file)
    @file = file
    @people = nil
  end

  #CSVファイルの名前で初期化されたPerson Parserクラスを作成します。
  #その後、Rubyの組み込みCSVクラスを使用して、CSVファイルのデータに基づいて適切に解析されたPersonの配列を返すPeopleメソッドを実装します。 

  def people

    CSV.foreach'/path/to/future_gadgets.csv' do |row|

    # If we've already parsed the CSV file, don't parse it again.
    # Remember: @people is +nil+ by default.
    return @people if @people

    # We've never called people before, now parse the CSV file
    # and return an Array of Person objects here.  Save the
    # Array in the @people instance variable.
  end
end

parser = PersonParser.new('people.csv')

puts "There are #{parser.people.size} people in the file '#{parser.file}'."
