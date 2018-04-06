require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'counts factors of n' do
    n = 24  # 1, 2, 3, 4, 6, 8, 12, 24
    solution(n).must_equal(8)
  end

  it 'counts factors of n' do
    n = 100 # 1, 2, 4, 5, 10, 20, 25, 50, 100
    solution(n).must_equal(9)
  end
end