f = File.open("testfile.txt")
f.each do |line|
  puts "The line is: #{line}"
end
f.close

#################################################################
# <===================OUTPUT===================>                #
# c:/ttmp/ruby_in_action/pickaxe/misc >>> ruby tut_iterator.rb  #
# The line is: The line is: This is line one                    #
# The line is: The line is: This is line two                    #
# The line is: The line is: This is line three                  #
# The line is: The line is: And so on...                        #
#################################################################
