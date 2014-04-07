module Ex25
  def self.break_words(stuff)
    # This function will break up words for us
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sorts the words
    words.sort()
  end

  def self.print_first_word(words)
    # Print the first word and shifts the others down by one
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    # Prints the last word after popping it off the end
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    # Takes in a full sentence and returns the sorted words
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    # Prints the first and last words of the sentence.after.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end

end

#########################################################################
# <===================OUTPUT===================>                        #
# irb(main):001:0> require './ex25'                                     #
# require './ex25'                                                      #
# => true                                                               #
# irb(main):002:0> sentence = "All good things come to those who wait." #
# sentence = "All good things come to those who wait."                  #
# => "All good things come to those who wait."                          #
# irb(main):003:0> words = Ex25.break_words(sentence)                   #
# words = Ex25.break_words(sentence)                                    #
# => ["All", "good", "things", "come", "to", "those", "who", "wait."]   #
# irb(main):004:0> sorted_words = Ex25.sort_words(words)                #
# sorted_words = Ex25.sort_words(words)                                 #
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]   #
# irb(main):005:0> Ex25.print_last_word(words)                          #
# Ex25.print_last_word(words)                                           #
# wait.                                                                 #
# => nil                                                                #
# irb(main):006:0> Ex25.print_first_word(words)                         #
# Ex25.print_first_word(words)                                          #
# All                                                                   #
# => nil                                                                #
# irb(main):007:0> words                                                #
# words                                                                 #
# => ["good", "things", "come", "to", "those", "who"]                   #
# irb(main):008:0> Ex25.print_first_word(sorted_words)                  #
# Ex25.print_first_word(sorted_words)                                   #
# All                                                                   #
# => nil                                                                #
# irb(main):009:0> Ex25.print_last_word(sorted_words)                   #
# Ex25.print_last_word(sorted_words)                                    #
# who                                                                   #
# => nil                                                                #
# irb(main):010:0> sorted_words                                         #
# sorted_words                                                          #
# => ["come", "good", "things", "those", "to", "wait."]                 #
# irb(main):011:0> Ex25.sort_sentence(sentence)                         #
# Ex25.sort_sentence(sentence)                                          #
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"]   #
# irb(main):012:0> Ex25.print_first_and_last(sentence)                  #
# Ex25.print_first_and_last(sentence)                                   #
# All                                                                   #
# wait.                                                                 #
# => nil                                                                #
# irb(main):013:0> Ex25.print_first_and_last_sorted(sentence)           #
# Ex25.print_first_and_last_sorted(sentence)                            #
# All                                                                   #
# who                                                                   #
# => nil                                                                #
# irb(main):014:0>                                                      #
#########################################################################
