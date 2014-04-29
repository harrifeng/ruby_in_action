def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end


p count_frequency(["sparky", "the", "cat", "sat", "on", "the", "mat"])

# you can see the order is the same with the one you add them to hash
##################################################################
# <===================OUTPUT===================>                 #
# {"sparky"=>1, "the"=>2, "cat"=>1, "sat"=>1, "on"=>1, "mat"=>1} #
##################################################################
