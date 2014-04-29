require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase

  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("   "))
  end

  def test_single_word
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string("   cat  "))
  end

  def test_many_words
    assert_equal(["the", "cat", "sat", "on", "the","mat"],
                 words_from_string("the cat sat on the mat"))
  end

  def test_ignores_punctuation
    assert_equal(["the", "cat's", "mat"],
                 words_from_string("<the!> cat's, -mat"))
  end
end

##########################################################################
# <===================OUTPUT===================>                         #
# Run options:                                                           #
#                                                                        #
# # Running tests:                                                       #
#                                                                        #
# Finished tests in 0.005396s, 741.2898 tests/s, 1111.9348 assertions/s. #
# 4 tests, 6 assertions, 0 failures, 0 errors, 0 skips                   #
#                                                                        #
# ruby -v: ruby 2.0.0p247 (2013-06-27 revision 41674) \                  #
# [universal.x86_64-darwin13]                                            #
##########################################################################

    
