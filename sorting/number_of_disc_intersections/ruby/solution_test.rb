require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds the number of disc intersections' do
    a = [1, 5, 2, 1, 4, 0]
    solution(a).must_equal(11)
  end

  it 'finds the number of disc intersections' do
    a = [1, 1, 1]
    solution(a).must_equal(3)
  end

  it 'finds the number of disc intersections' do
    a = [1, 0, 1, 0, 1]
    solution(a).must_equal(6)
  end
end