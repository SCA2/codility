require 'minitest/autorun'

def longest_subsequence(a)
  memo = [1] * a.length
  print "a: #{a}\n"
  (0...a.length).each do |i|
    (0...i).each do |j|
      if a[i] > a[j] && memo[i] <= memo[j]
        memo[i] += 1
      end
    end
  end
  print "memo: #{memo}\n"
  memo.max
end

class TestLongestSubsequence < Minitest::Test
  def test_1
    assert_equal 5, longest_subsequence([2,5,7,3,9,4,6,8,1])
  end
end