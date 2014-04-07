from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exists? #{File.exist? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()

####################################################
# <===================OUTPUT===================>   #
# bash-3.2$ ruby ex17.rb ex17_from.txt ex17_to.txt #
# Copying from ex17_from.txt to ex17_to.txt         #
# The input file is 79 bytes long                  #
# Does the output file exists? false               #
# Ready, hit RETURN to continue, CTRL-C to abort.  #
#                                                  #
# Alright, all done.                               #
# bash-3.2$ cat ex17_to.txt                        #
# To all the people out there.                     #
# I say I don't like my hair                       #
# I need to shave it off                           #
####################################################
