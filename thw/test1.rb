puts "test1"

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end

puts sum

# total = 0   
# 
# 
# [1,2,3,4].each do |value|
#   total += value
# end
# 
# puts total
# 
# 
# data = [1, 2, 3, 4]
# 
# data.each {|x| total += x }  # Sum the elements of the data array
# puts total                   # Print out that sum
