# Codility Lesson 14 - Binary Search Algorithm
# NailingPlanks
# Count the minimum number of nails that allow a series of planks to be nailed.

def solution(a, b, c)
  planks = a.zip(b).sort
  nails = c.each_with_index.sort

  max_order = -1
  nails_index = 0
  last_plank = nil
  planks.each do |plank|
    # If the current plank starts at the same position as last_plank,
    # we've already found the leftmost nail for the current plank
    next if !last_plank.nil? && last_plank[0] == plank[0]

    # Find the leftmost nail that will nail the plank.
    # Note that we start from nails_index, not 0
    index = nails[nails_index..-1].find_index do |n|
      n[0] >= plank[0] && n[0] <= plank[1]
    end

    if index.nil?
      # Can't find a suitable nail, so return -1
      return -1
    else
      # Advance nails_index so we don't start from 0 next time
      nails_index += index
    end

    # Check for any earlier-appearing nails that can also nail the plank
    min_order = nails[nails_index][1]
    nails[nails_index..-1].each do |n|
      break if n[0] < plank[0] || n[0] > plank[1]
      min_order = n[1] < min_order ? n[1] : min_order
      # Quit if this nail won't help the final answer
      break if min_order <= max_order
    end
    max_order = min_order > max_order ? min_order : max_order

    last_plank = plank
  end

  return max_order + 1
end