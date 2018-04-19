require 'minitest/autorun'

def nonincreasing_subs(a)
  nis = [1] * a.length
  (a.length-1).times do |i|
    if a[i+1] <= a[i]
      nis[i+1] = nis[i] + 1
    end
  end
  nis
end

def make_increasing(a)
  b = nonincreasing_subs(a)
  max_length = b.max
  last = b.index(max_length)
  first = last - max_length + 1
  c = a[first..last].map.with_index { |n, i| n - i }
  eq = ((c.max - c.min + 0.5) / 2).round
  puts "b: #{b}"
  puts "max: #{c.max}, min: #{c.min}"
  eq
end

class TestMinIncrement < Minitest::Test
  def test_1
    assert_equal 3, make_increasing([5, 4, 3, 2, 8])
  end

  def test_2
    assert_equal 4, make_increasing([0, 0, 0, 0, 0, 0, 0, 0, 0])
                                #([-4, -3, -2, -1, 0, 1, 2, 3, 4])
  end

  def test_8
    assert_equal 7, make_increasing([0, 0, 0, 0, 10, 0, 0, 0, 0])
                                  #([-1, 0, 1, 2, 3, 4, 5, 6, 7])
  end

  def test_9
    assert_equal 9, make_increasing([10, 0, 0, 0, 0, 0, 0, 0, 0])
                                  #([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  def test_10
    assert_equal 4, make_increasing([0, 0, 0, 0, 0, 0, 0, 0, 10])
                                  #([-3, -2, -1, 0, 1, 2, 3, 4, 10])
  end

  def test_7
    assert_equal 53, make_increasing([4, 3, 2, 100, 9, 8, 7, 6, 5, 1])
                                    #([4, 3, 2, 100, 8, 6, 4, 2, 0, -5])
                                #([4, 3, 2, 48, 49, 50, 51, 52, 53, 54])
  end

  def test_3
    assert_equal 51, make_increasing([100, 0])
  end

  def test_4
    assert_equal 55, make_increasing([100, 0, 0, 0, 0, 0, 0, 0, 0, 0])
                          #([100, -1, -2, -3, -4, -5, -6, -7, -8, -9])
                          #([46, 47, 48, 49, 50, 51, 52, 53, 54, 55])
  end

  def test_5
    assert_equal 0, make_increasing([0, 100])
  end

  def test_6
    assert_equal 4, make_increasing([0, 1, 0, 1, 0, 1, 0, 1, 0, 100])
                                  #([0, 0, 1, 0, 1, 0, 1, 0, 1, 100])
  end
end