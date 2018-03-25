require 'minitest/autorun'

def max_sum(a, i, j, max)
  puts "#{a[i..j]}"
  return a[i] if i == j
  m = [a[i], a[i] + max_sum(a, i+1, j, max)].max
  n = [max_sum(a, i, j-1, max) + a[j], a[j]].max
  [m, n, max].max
end

class TestMaxSumSubsequence < Minitest::Test
  def test_1
    assert_equal 29, max_sum([-3, 5, -6, 7, 8, 9, 2, -1, 4], 0, 8, -10000)
  end

  def test_2
    assert_equal 5, max_sum([-3, 5, -6], 0, 2, -10000)
  end

  def test_3
    assert_equal 5, max_sum([-3, 5], 0, 1, -10000)
  end

  def test_4
    assert_equal 3, max_sum([3, -5], 0, 1, -10000)
  end
end