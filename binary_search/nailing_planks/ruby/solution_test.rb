require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'returns minimum index of nail required to nail all planks' do
    a = [1, 4, 5, 8]
    b = [4, 5, 9, 10]
    c = [4, 6, 7, 10, 2]
    solution(a, b, c).must_equal(4)
  end

  it 'returns minimum index of nail required to nail all planks' do
    a = [1, 3, 4, 5, 8]
    b = [4, 3, 5, 9, 10]
    c = [4, 6, 7, 10, 2]
    solution(a, b, c).must_equal(-1)
  end

  it 'returns minimum index of nail required to nail all planks' do
    a = [4, 5]
    b = [5, 6]
    c = [1, 2, 3, 4, 5, 6]
    solution(a, b, c).must_equal(5)
  end
  
  it 'returns minimum index of nail required to nail all planks' do
    a = [1, 2]
    b = [2, 3]
    c = [1, 2, 3, 4]
    solution(a, b, c).must_equal(2)
  end
end