class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close()
  end
end


File.open_and_process("testfile.txt", "r") do |file|
  while line = file.gets
    puts line
  end
end

###########################################################################
# <===================OUTPUT===================>                          #
# c:/ttmp/ruby_in_action/pickaxe/misc >>> ruby tut_block_transactions.rb  #
# The line is: This is line one                                           #
# The line is: This is line two                                           #
# The line is: This is line three                                         #
# The line is: And so on...                                               #
###########################################################################
