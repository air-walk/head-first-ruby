class Dog

	attr_reader :name, :age

	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		end
		@name = value
	end

	def age=(value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
		@age = value
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	def talk
		puts "#{@name} says Bark!"
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end

end

dog 		 = Dog.new
dog.name = "Daisy"
dog.age  = 3
dog.report_age
dog.talk
dog.move("bed")

dog2      = Dog.new
dog2.name = "Checker"
dog2.age   = 4
dog2.report_age
dog2.talk
dog2.move("sofa")
