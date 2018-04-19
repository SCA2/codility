require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'divides a into the maximum number of blocks' do
    a = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
    solution(a).must_equal(3)
  end

  it 'divides a into the maximum number of blocks' do
    a = [1, 2, 1, 2]
    solution(a).must_equal(1)
  end

  it 'divides a into the maximum number of blocks' do
    a = [1, 2, 3, 4, 5, 6]
    solution(a).must_equal(0)
  end

  it 'divides a into the maximum number of blocks' do
    a = [0, 1, 0, 1, 0]
    solution(a).must_equal(1)
  end

  it 'divides a into the maximum number of blocks' do
    a = [0, 1, 0, 1, 0, 1, 0, 1, 0]
    solution(a).must_equal(3)
  end
end