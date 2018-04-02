require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates number of surviving fish' do
    a = [4, 3, 2, 1, 5]
    b = [0, 1, 0, 0, 0]
    solution(a, b).must_equal(2)
  end

  it 'calculates number of surviving fish' do
    a = [0, 1]
    b = [1, 1]
    solution(a, b).must_equal(2)
  end
end