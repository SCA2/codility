require_relative('../../../test_helper')
require_relative('solution')

describe 'fib_jumps' do
  it 'calculates array of fibonacci numbers' do
    fib_jumps(2).must_equal([1, 2])
  end

  it 'calculates array of fibonacci numbers' do
    fib_jumps(8).must_equal([1, 2, 3, 5, 8])
  end

  it 'calculates array of fibonacci numbers' do
    fib_jumps(10).must_equal([1, 2, 3, 5, 8])
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