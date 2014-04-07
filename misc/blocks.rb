class Blocks
end

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block {puts "In the block"}

def call_block2
  yield("hello", 12)
end

call_block2{|str, num| puts str, num}

# Same with following
# ---dummy each function---
# def each
#   for each element
#     yield(element)
#   end
# end
animals = %w(ant bee cat dog elk)
animals.each{|animal| puts animal}

# usage example
['cat', 'dog', 'horse'].each {|name| print name, " "}
5.times {print "*"}
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}