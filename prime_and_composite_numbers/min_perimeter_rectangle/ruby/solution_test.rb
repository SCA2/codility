require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds minimum perimeter of rectangle with area n' do
    n = 30
    solution(n).must_equal(22)
  end

  it 'finds minimum perimeter of rectangle with area n' do
    n = 1
    solution(n).must_equal(4)
  end
end