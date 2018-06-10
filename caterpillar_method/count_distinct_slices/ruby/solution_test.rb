require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns number of distinct slices' do
    a = [3, 4, 5, 5, 2]
    solution(5, a).must_equal(9)
  end

  it 'returns number of distinct slices' do
    a = [3, 4, 5]
    solution(5, a).must_equal(6)
  end

  it 'returns number of distinct slices' do
    a = [3, 3, 3]
    solution(5, a).must_equal(3)
  end
end