require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds the minimum absolute sum of a' do
    a = [1, 5, 2, -1]
    solution(a).must_equal(1)
  end

  it 'finds the minimum absolute sum of a' do
    a = [1, 5, 2, -2]
    solution(a).must_equal(0)
  end
end