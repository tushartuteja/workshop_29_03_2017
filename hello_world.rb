class Person
	def initialize name, age
		@name = name
		@age = age
	end
	def name
		return @name
	end
	def age
		return @age
	end
	def name= name
		@name = name
	end
end

first = Person.new "Tushar",25

puts first.name
first.name= "Shreyashish"
puts first.name




