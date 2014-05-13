print "(t)imes or (p)lus "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
  puts((1..10).collect {|n| n * number}.join(", "))
else
  puts((1..10).collect {|n| n + number}.join(", "))
end

##################################################
# <===================OUTPUT===================> #
# bash-3.2$ ruby tut_method_block.rb             #
# (t)imes or (p)lus t                            #
# number: 3                                      #
# 3, 6, 9, 12, 15, 18, 21, 24, 27, 30            #
# bash-3.2$ ruby tut_method_block.rb             #
# (t)imes or (p)lus p                            #
# number: 3                                      #
# 4, 5, 6, 7, 8, 9, 10, 11, 12, 13               #
##################################################
