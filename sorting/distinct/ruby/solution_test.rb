require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates number of distinct values in a ' do
    a = [2, 1, 1, 2, 3, 1]
    solution(a).must_equal(3)
  end
end