require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns any index of dominator' do
    a = [4, 3, 3, 2, 3, -1, 3, 3]
    solution(a).must_equal(1)
  end

  it 'returns -1 if no dominator' do
    a = [3, 4, 3, 2, 3, -1, 3, 3, 2, 5]
    solution(a).must_equal(-1)
  end
end