require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds the subset of maximal sum' do
    a = [1, -2, 0, 9, -1, -2]
    solution(a).must_equal(8)
  end

  it 'finds the subset of maximal sum' do
    a = [1, 1]
    solution(a).must_equal(2)
  end
end