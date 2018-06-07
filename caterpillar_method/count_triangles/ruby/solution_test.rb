require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns the number of triangular triplets in a' do
    a = [10, 2, 5, 1, 8, 12]
    solution(a).must_equal(4)
  end

  it 'returns the number of triangular triplets in a' do
    a = [10, 2, 5]
    solution(a).must_equal(0)
  end

  it 'returns the number of triangular triplets in a' do
    a = [10, 2]
    solution(a).must_equal(0)
  end
end