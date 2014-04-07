def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDEING #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"

##################################################
# <===================OUTPUT===================> #
# Let's do some math with just functions!        #
# ADDING 30 + 5                                  #
# SUBTRACTING 78 - 4                             #
# MULTIPLYING 90 * 2                             #
# DIVIDEING 100 / 2                              #
# Age: 35, Height: 74, Weight: 180, IQ: 50       #
# Here is a puzzle.                              #
# DIVIDEING 50 / 2                               #
# MULTIPLYING 180 * 25                           #
# SUBTRACTING 74 - 4500                          #
# ADDING 35 + -4426                              #
# That becomes: -4391 Can you do it by hand?     #
# => nil                                         #
##################################################
