entry = "wibble"
[1, 2, 3].each do |entry|
  # ..
end
puts "Last entry = #{entry}"

###############################################################
# <===================OUTPUT===================>              #
# bash-3.2$ ruby -w scope.rb                                  #
# scope.rb:2: warning: shadowing outer local variable - entry #
# Last entry = wibble                                         #
###############################################################
