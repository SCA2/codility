require 'minitest/autorun'

def max_deviation(v, d)
  max_from_l = v[1..-1].reduce([v[0]]) do |s, n|
    n > s.last ? s + [n] : s + [s.last]
  end
  min_from_l = v[1..-1].reduce([v[0]]) do |s, n|
    n < s.last ? s + [n] : s + [s.last]
  end
  u = v.reverse
  max_from_r = u[1..-1].reduce([u[0]]) do |s, n|
    n > s.first ? [n] + s : [s.first] + s
  end
  min_from_r = u[1..-1].reduce([u[0]]) do |s, n|
    n < s.first ? [n] + s : [s.first] + s
  end
  d -= 1
  max_diff = 0
  (v.length - d).times do |i|
    diff_l = (max_from_r[i] - min_from_l[i+d]).abs
    diff_r = (max_from_l[i] - min_from_r[i+d]).abs
    diff = [diff_l, diff_r].min
    max_diff = diff if diff > max_diff
  end
  max_diff
end

class TestMaxDeviation < Minitest::Test
  def test_1
    assert_equal 6, max_deviation([6,9,4,7,4,1], 3)
  end

  def test_2
    assert_equal 5, max_deviation([6,9,4,7,4,1], 2)
  end

  def test_3
    assert_equal 8, max_deviation([6,9,4,7,4,1], 5)
  end

  def test_4
    assert_equal 1, max_deviation([1,2,3,4,5,6,7,8,9], 2)
  end

  def test_5
    assert_equal 1, max_deviation([9,8,7,6,5,4,3,2,1], 2)
  end

  def test_6
    assert_equal 0, max_deviation([0,0,0,0,0,0,0,0,0], 7)
  end
end