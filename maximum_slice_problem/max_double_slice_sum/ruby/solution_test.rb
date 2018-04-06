require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds maximum double slice' do
    a = [5, 5, 5]
    solution(a).must_equal(0)
  end

  it 'finds maximum double slice' do
    a = [3, 2, 6, -1, 4, 5, -1, 2]
    solution(a).must_equal(17)
  end

  it 'finds maximum double slice' do
    a = [5, 17, 0, 3]
    solution(a).must_equal(17)
  end

  it 'finds maximum double slice' do
    a = [-1, -1, -1, -1]
    solution(a).must_equal(0)
  end

  it 'finds maximum double slice' do
    a = [0, 10, -5, -2, 0]
    solution(a).must_equal(10)
  end
end