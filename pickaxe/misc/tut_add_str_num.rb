File.open('number.txt', 'r') do |file|
  puts "add string directly---->"
  while line = file.gets
    v1, v2 = line.split
    print v1 + v2, " "
  end
end

puts

File.open('number.txt', 'r') do |file|
  puts "add string wrapped by Integer---->"  
  while line = file.gets
    v1, v2 = line.split
    print Integer(v1) + Integer(v2), " "
  end
end
puts

##################################################
# <===================OUTPUT===================> #
# add string directly---->                       #
# 34 56 78                                       #
# add string wrapped by Integer---->             #
# 7 11 15                                        #
##################################################
