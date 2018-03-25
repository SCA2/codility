require 'minitest/autorun'

def min_steps(n, memo)
  return 0 if n == 1
  return memo[n] if memo.include?(n)
  r = 1 + min_steps(n - 1, memo)
  r = [r, 1 + min_steps(n/2, memo)].min if n % 2 == 0
  r = [r, 1 + min_steps(n/3, memo)].min if n % 3 == 0
  memo[n] = r
  return r
end

class TestMinSteps < Minitest::Test
  
  def setup
    @memo = {}
  end

  def test_1
    assert_equal 0, min_steps(1, @memo)
  end
  def test_2
    assert_equal 2, min_steps(4, @memo)
  end
  def test_3
    assert_equal 3, min_steps(7, @memo)
  end
  def test_4
    assert_equal 9, min_steps(1137, @memo)
  end
end