class Array
end

a = [1, 'cat', 3.14]
puts a[0]
a[2] = nil
puts "------------"
puts a

a = %w{ant bee cat dog elk}
puts "------------"
puts a

a = [3.14159, "pie", 99]
puts a.class
puts a.length
puts "------------"
a.each{|one| puts one}