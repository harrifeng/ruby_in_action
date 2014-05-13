print "(t)imes or (p)lus "
operator = gets
print "number: "
number = Integer(gets)
if operator =~ /^t/
  calc = lambda {|n| n * number}
else
  calc = lambda {|n| n + number}
end
puts((1..10).collect(&calc).join(", "))

##################################################
# <===================OUTPUT===================> #
# bash-3.2$ ruby tut_method_block2.rb            #
# (t)imes or (p)lus t                            #
# number: 2                                      #
# 2, 4, 6, 8, 10, 12, 14, 16, 18, 20             #
##################################################
