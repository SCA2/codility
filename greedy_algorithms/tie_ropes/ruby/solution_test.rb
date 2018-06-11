require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns maximum number of ropes of length >= K' do
    a = [1, 2, 3, 4, 1, 1, 3]
    k = 4
    solution(k, a).must_equal(3)
  end

  it 'returns maximum number of ropes of length >= K' do
    a = [1]
    k = 2
    solution(k, a).must_equal(0)
  end
end
