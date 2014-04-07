filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "Here's your file: " #{filename}
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()

######################################################################
# <===================OUTPUT===================>                     #
# D:\Devbox\Ruby\bin\ruby.exe -e C:/tmp/ruby_in_action/thw/ex15.rb \ #
# ex15_sample.txt                                                    #
# Here's your file:                                                  #
# This is stuff I typed into a file.                                 #
# It is really cool stuff.                                           #
# Lots and lots of fun to have in here.                              #
# I'll also ask you to type it again:                                #
# > ex15_sample.txt                                                  #
# This is stuff I typed into a file.                                 #
# It is really cool stuff.                                           #
######################################################################
