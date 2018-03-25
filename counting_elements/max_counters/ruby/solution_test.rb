require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates correct counter values' do
    a = [3, 4, 4, 6, 1, 4, 4]
    n = 5
    solution(n, a).must_equal [3, 2, 2, 4, 2]
  end

  it 'calculates correct counter values' do
    a = [1]
    n = 1
    solution(n, a).must_equal [1]
  end
end