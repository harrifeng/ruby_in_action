first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

##################################################################
# <===================OUTPUT===================>                 #
# c:/tmp/ruby_in_action/thw >>> ruby ex13.rb first 2nd 3rd       #
# The script is called: ex13.rb                                  #
# Your first variable is: first                                  #
# Your second variable is: 2nd                                   #
# Your third variable is: 3rd                                    #
# c:/tmp/ruby_in_action/thw >>> ruby ex13.rb cheese apples bread #
# The script is called: ex13.rb                                  #
# Your first variable is: cheese                                 #
# Your second variable is: apples                                #
# Your third variable is: bread                                  #
# c:/tmp/ruby_in_action/thw >>> ruby ex13.rb Zed A. Shaw         #
# The script is called: ex13.rb                                  #
# Your first variable is: Zed                                    #
# Your second variable is: A.                                    #
# Your third variable is: Shaw                                   #
##################################################################
