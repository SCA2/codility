require_relative '../../../test_helper'
require_relative 'solution'

describe 'solution' do
  it 'finds longest sequence of zeros' do
    n = 1041
    solution(n).must_equal 5
  end

  it 'finds longest sequence of zeros' do
    n = 17
    solution(n).must_equal 3
  end

  it 'finds longest sequence of zeros' do
    n = 16
    solution(n).must_equal 0
  end
end