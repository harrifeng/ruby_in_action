File.open('testfile.txt', 'r') do |f|
  f.each_with_index { |line, index| print "#{index}, #{line}"}
end
