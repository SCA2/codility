require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates number of pairs where prime divisors are the same' do
    a = [99, 15, 10, 3]
    b = [100, 75, 30, 5]
    solution(a, b).must_equal(1)
  end

  it 'calculates number of pairs where prime divisors are the same' do
    a = [15]
    b = [25]
    solution(a, b).must_equal(0)
  end

  it 'calculates number of pairs where prime divisors are the same' do
    a = [2, 1, 2]
    b = [1, 2, 2]
    solution(a, b).must_equal(1)
  end
end