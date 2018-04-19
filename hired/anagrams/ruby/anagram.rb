require 'minitest/autorun'

def anagram?(s)
  s == s.reverse
end

class AnagramTest < Minitest::Test
  def test_abba_is_an_anagram
    assert_equal true, anagram?('abba')
  end

  def test_abcd_is_not_an_anagram
    assert_equal false, anagram?('abcd')
  end
end