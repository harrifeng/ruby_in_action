class Test
	attr_reader name

	def initialize(name)
		@name = name
	end
end

test = Test.new("hello")
puts test.@name
