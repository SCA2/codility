require 'minitest/autorun'

def max_kadane(a)
  max_to_here = max = a[0]
  a[1..-1].each do |x|
    max_to_here = [x, max_to_here + x].max
    max = [max, max_to_here].max
  end
  max
end

def min_kadane(a)
  min_to_here = min = a[0]
  a[1..-1].each do |x|
    min_to_here = [x, min_to_here + x].min
    min = [min, min_to_here].min
  end
  min
end

def max_difference(a)
  max_kadane(a) - min_kadane(a)
end

class TestMaximumDifference < Minitest::Test
  def test_1
    assert_equal 9, max_kadane([3,-5,1,-2,8,-2,3,-2,1])
  end
  def test_2
    assert_equal -6, min_kadane([3,-5,1,-2,8,-2,3,-2,1])
  end
  def test_3
    assert_equal 15, max_difference([3,-5,1,-2,8,-2,3,-2,1])
  end
  def test_4
    assert_equal 12, max_difference([-2, -3, 4, -1, -2, 1, 5, -3])
  end
  def test_5
    assert_equal 16, max_difference([2, -1, -2, 1, -4, 2, 8])
  end
  def test_6
    assert_equal 9, max_difference([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
  end
end