f = File.open("testfile.txt")
f.each.with_index do |line, index|
  puts "Line #{index} is: #{line}"
end
f.close

##################################################################
# <===================OUTPUT===================>                 #
# c:/ttmp/ruby_in_action/pickaxe/misc >>> ruby tut_iter_index.rb #
# Line 0 is: The line is: This is line one                       #
# Line 1 is: The line is: This is line two                       #
# Line 2 is: The line is: This is line three                     #
# Line 3 is: The line is: And so on...                           #
##################################################################
