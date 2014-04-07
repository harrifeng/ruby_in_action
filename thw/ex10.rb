tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_EHREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_EHREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#####################################################
# <===================OUTPUT===================>    #
# 	I'm tabbed in.                                  #
# I'm split                                         #
# on a line.                                        #
# I'm \ a \ cat.                                    #
# I'll do a list:                                   #
# 	* Cat food                                      #
# 	* Fishies                                       #
# 	* Catnip                                        #
# 	* Grass                                         #
# => nil                                            #
#####################################################
