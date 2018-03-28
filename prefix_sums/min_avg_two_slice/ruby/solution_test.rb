require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'finds minimal average of any slice of 2 or more elements' do
    a = [4, 2, 2, 5, 1, 5, 8]
    solution(a).must_equal 1
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [-18, 65, -11, 73, -22, 90, 21, 10, 47, 87]
    solution(a).must_equal 0
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [1, -1, 1, -1]
    solution(a).must_equal 1
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [1, -10, -1, 10]
    solution(a).must_equal 1
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [1, 1, 1, 1]
    solution(a).must_equal 0
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [0, 0]
    solution(a).must_equal 0
  end

  it 'finds minimal average of any slice of 2 or more elements' do
    a = [-10000, 10000]
    solution(a).must_equal 0
  end
end