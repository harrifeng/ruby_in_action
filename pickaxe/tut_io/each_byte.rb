File.open("testfile.txt") do |file|
  file.each_byte.with_index do |ch, index|
    print "#{ch.chr}:#{ch} "
    break if index > 10
  end
end

#######################################################################
# <===================OUTPUT===================>                      #
# bash-3.2$ ruby each_byte.rb                                         #
# T:84 h:104 e:101  :32 l:108 i:105 n:110 e:101  :32 i:105 s:115 ::58 #
#######################################################################
