class GoodNight
end

def say_goodnight(name)
  result = "Good night, " + name
  return result
end


# Time for bed
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")


def say_goodnight2(name)
  result = "Good night, #{name}"
  return result
end

# Time for bed
puts say_goodnight2('Pa')


def say_goodnight3(name)
  result = "Good night, #{name.capitalize}"
  return result
end
puts say_goodnight3('uncle')

$greeting = "hello"
@name = "Prudence"

puts "#$greeting, #@name"

def say_goodnight4(name)
  "Good night, #{name}"
end
puts say_goodnight4('Ma')
