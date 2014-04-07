formatter = "%s %s %s %s"

puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
    "I had this thing.",
    "That you could type up right.",
    "But it didn't sing.",
    "So I said goodnight."
]

#########################################################################
# <===================OUTPUT===================>                        #
# 1 2 3 4                                                               #
# one two three four                                                    #
# true false false true                                                 #
# %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s                       #
# I had this thing. That you could type up right. But it didn't sing. \ #
# So I said goodnight.                                                  #
#########################################################################
