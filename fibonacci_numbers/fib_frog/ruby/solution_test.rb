require_relative('../../../test_helper')
require_relative('solution')

describe 'fibonacci' do
  it 'calculates array of fibonacci numbers' do
    fibonacci(2).must_equal([2, 1])
  end

  it 'calculates nth fibonacci number' do
    fibonacci(8).must_equal([8, 5, 3, 2, 1])
  end

  it 'calculates nth fibonacci number' do
    fibonacci(10).must_equal([8, 5, 3, 2, 1])
  end
end

describe 'solution' do
  it 'calculates minimum number of jumps to cross a river' do
    a = [0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0]
    solution(a).must_equal(3)
  end

  it 'calculates minimum number of jumps to cross a river' do
    a = [0, 0, 0]
    solution(a).must_equal(-1)
  end

  it 'calculates minimum number of jumps to cross a river' do
    a = [1, 1, 0, 0, 0]
    solution(a).must_equal(2)
  end
end