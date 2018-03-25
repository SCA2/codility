require_relative('../../../test_helper')
require_relative('solution')

describe 'solution' do
  it 'counts minimal jumps' do
    x = 10
    y = 85
    d = 30
    solution(x, y, d).must_equal 3
  end
end