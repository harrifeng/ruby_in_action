user = ARGV.first
prompt = '> '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions"
puts "D you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}"
print prompt
lives = STDIN.gets.chomp

puts "What kindof computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you side #{likes} about liking me.
You live in #{lives}. Not sue where that is
And you have a #{computer} computer. Nice.
MESSAGE

#############################################################
# <===================OUTPUT===================>            #
# Hi Zed, I'm the C:/tmp/ruby_in_action/thw/ex14.rb script. #
# I'd like to ask you a few questions                       #
# D you like me Zed?                                        #
# > Yes                                                     #
# Where do you live Zed                                     #
# > America                                                 #
# What kindof computer do you have?                         #
# > Tandy                                                   #
# Alright, so you side Yes about liking me.                 #
# You live in America. Not sue where that is                #
# And you have a Tandy computer. Nice.                      #
#############################################################
