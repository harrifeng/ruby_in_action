require_relative 'count_frequency'
require 'test/unit'

class TestCountFrequencey < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  def test_single_word
    assert_equal({"cat" => 1}, count_frequency(["cat"]))
  end

  def test_two_different_words
    assert_equal({"cat" => 2, "sat" => 1},
                 count_frequency(["cat", "cat", "sat"]))
  end

  def test_two_words_with_non_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1},
                 count_frequency(["cat", "sat", "cat"]))
  end
end

#########################################################################
# <===================OUTPUT===================>                        #
# Run options:                                                          #
#                                                                       #
# # Running tests:                                                      #
#                                                                       #
# Finished tests in 0.006311s, 633.8140 tests/s, 633.8140 assertions/s. #
# 4 tests, 4 assertions, 0 failures, 0 errors, 0 skips                  #
#                                                                       #
# ruby -v: ruby 2.0.0p247 (2013-06-27 revision 41674)\                  #
# [universal.x86_64-darwin13]                                           #
#########################################################################
