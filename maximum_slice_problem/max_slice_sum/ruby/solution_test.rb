require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds the sum of the maximum slice of a' do
    a = [3, 2, -6, 4, 0]
    solution(a).must_equal(5)
  end

  it 'finds the sum of the maximum slice of a' do
    a = [3, 2, -6, 3, 0, 4]
    solution(a).must_equal(7)
  end

  it 'finds the sum of the maximum slice of a' do
    a = [-1, -1, -1, -1]
    solution(a).must_equal(-1)
  end

  it 'finds the sum of the maximum slice of a' do
    a = [5]
    solution(a).must_equal(5)
  end
end