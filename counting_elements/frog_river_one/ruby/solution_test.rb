require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds earliest time frog can jump' do
    a = [1, 3, 1, 4, 2, 3, 5, 4]
    x = 5
    solution(x, a).must_equal 6
  end

  it 'finds earliest time frog can jump' do
    a = [2, 2, 2, 2, 2]
    x = 2
    solution(x, a).must_equal -1
  end
end