require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns 1 if a triangular triplet exists in a' do
    a = [10, 2, 5, 1, 8, 20]
    solution(a).must_equal(1)
  end

  it 'returns 0 if a triangular triplet does not exist in a' do
    a = [10, 50, 5, 1]
    solution(a).must_equal(0)
  end

  it 'returns 0 if no triplet exists in a' do
    a = [10, 50]
    solution(a).must_equal(0)
  end
end