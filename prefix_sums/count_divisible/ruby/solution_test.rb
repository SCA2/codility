require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'calculates number of integers divisible by k in [a..b]' do
    a = 6
    b = 11
    k = 2
    solution(a, b, k).must_equal 3
  end

  it 'calculates number of integers divisible by k in [a..b]' do
    a = 0
    b = 12
    k = 3
    solution(a, b, k).must_equal 5
  end

  it 'calculates number of integers divisible by k in [a..b]' do
    a = 1
    b = 1
    k = 11
    solution(a, b, k).must_equal 0
  end

  it 'calculates number of integers divisible by k in [a..b]' do
    a = 10
    b = 10
    k = 5
    solution(a, b, k).must_equal 1
  end

  it 'calculates number of integers divisible by k in [a..b]' do
    a = 10
    b = 10
    k = 7
    solution(a, b, k).must_equal 0
  end

  it 'calculates number of integers divisible by k in [a..b]' do
    a = 10
    b = 10
    k = 20
    solution(a, b, k).must_equal 0
  end
end