require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates number of surviving fish' do
    a = [4, 3, 2, 1, 5]
    b = [0, 1, 0, 0, 0]
    solution(a).must_equal(2)
  end
end