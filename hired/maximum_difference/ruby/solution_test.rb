require_relative('../../../test_helper')
require_relative('solution')

# describe 'max_kadane' do
#   it 'finds maximum subsequence of a' do
#     a = [3, -5, 1, -2, 8, -2, 3, -2, 1]
#     max_kadane(a).must_equal(9)
#   end
# end

# describe 'min_kadane' do
#   it 'finds minimum subsequence of a' do
#     a = [3, -5, 1, -2, 8, -2, 3, -2, 1]
#     min_kadane(a).must_equal(-6)
#   end
# end

describe 'solution' do
  it 'finds maximum difference between substrings' do
    a = [3, -5, 1, -2, 8, -2, 3, -2, 1]
    solution(a).must_equal(15)
  end

  it 'finds maximum difference between substrings' do
    a = [-2, -3, 4, -1, -2, 1, 5, -3]
    solution(a).must_equal(12)
  end

  it 'finds maximum difference between substrings' do
    a = [2, -1, -2, 1, -4, 2, 8]
    solution(a).must_equal(16)
  end

  it 'finds maximum difference between substrings' do
    a = [1, 1]
    solution(a).must_equal(0)
  end
end
