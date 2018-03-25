require_relative '../../../test_helper'
require_relative 'solution'

describe 'solution' do
  it 'returns the value of the unpaired element' do
    a = [9, 3, 9, 3, 9, 7, 9]
    solution(a).must_equal 7
  end

  it 'returns the value of the unpaired element' do
    a = [9, 1, 9, 1, 9, 0, 9]
    solution(a).must_equal 0
  end
end