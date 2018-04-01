require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates minimum number of blocks needed to build wall' do
    a = [8, 8, 5, 7, 9, 8, 7, 4, 8]
    solution(a).must_equal(7)
  end
end