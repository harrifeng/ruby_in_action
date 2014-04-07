filename = ARGV.first
script = $0

puts "We'are going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)"
puts "If you do want that, hit RETURN"

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line1: "; line1 = STDIN.gets.chomp()
print "line2: "; line2 = STDIN.gets.chomp()
print "line3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it"
target.close()

##################################################
# <===================OUTPUT===================> #
# bash-3.2$ ruby ex16.rb ex16_test.txt           #
# We'are going to erase ex16_test.txt            #
# If you don't want that, hit CTRL-C (^C)        #
# If you do want that, hit RETURN                #
# ?                                              #
# Opening the file...                            #
# Truncating the file. Goodbye!                  #
# Now I'm going to ask you for three lines.      #
# line1: To all                                  #
# line2: I say                                   #
# line3: I need to                               #
# I'm going to write these to the file           #
# And finally, we close it                       #
# bash-3.2$ cat ex16_test.txt                    #
# To all                                         #
# I say                                          #
# I need to                                      #
##################################################
