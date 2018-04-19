require 'minitest/autorun'

def balanced?(s)
  s = s.split('')
  brackets = []
  s.each do |c|
    brackets.push(c) if '[{('.include?(c)
    if c == ']'
      return false unless brackets.pop == '['
    end
    if c == '}'
      return false unless brackets.pop == '{'
    end
    if c == ')'
      return false unless brackets.pop == '('
    end
  end
  brackets.length == 0
end


class TestBalancedBrackets < Minitest::Test
  def test_1
    assert_equal true, balanced?('{a[()]b}')
  end

  def test_2
    assert_equal false, balanced?('{[(])}')
  end

  def test_3
    assert_equal true, balanced?('[](()){{[[(())]]}}')
  end
end