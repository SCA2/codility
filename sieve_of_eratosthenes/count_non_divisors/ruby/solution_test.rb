require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds number of elements in a that are not divisors' do
    a = [3, 1, 2, 3, 6]
    solution(a).must_equal([2, 4, 3, 2, 0])
  end

  it 'finds number of elements in a that are not divisors' do
    a = [3, 1, 2, 3, 6, 7]
    solution(a).must_equal([3, 5, 4, 3, 1, 4])
  end

  it 'finds number of elements in a that are not divisors' do
    a = [2]
    solution(a).must_equal([0])
  end
end