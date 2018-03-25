require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'counts number of passing cars' do
    a = [0, 1, 0, 1, 1]
    solution(a).must_equal 5
  end

  it 'counts number of passing cars' do
    a = [0, 0, 0, 0, 1]
    solution(a).must_equal 4
  end

  it 'counts number of passing cars' do
    a = [1, 0, 0, 0, 0]
    solution(a).must_equal 0
  end

  it 'counts number of passing cars' do
    a = [0, 1]
    solution(a).must_equal 1
  end

  it 'counts number of passing cars' do
    a = [1]
    solution(a).must_equal 0
  end

  it 'counts number of passing cars' do
    a = [0]
    solution(a).must_equal 0
  end
end