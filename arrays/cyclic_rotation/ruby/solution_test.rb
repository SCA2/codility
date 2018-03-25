require_relative '../../../test_helper'
require_relative 'solution'

describe 'solution' do
  it 'rotates array a by k positions to the right' do
    a = [3, 8, 9, 7, 6]
    k = 3
    solution(a, k).must_equal [9, 7, 6, 3, 8]
  end
end