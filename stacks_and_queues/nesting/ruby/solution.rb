# Codility Lesson 7 - Stacks and Queues
# Nesting
# Determine whether a given string of parentheses is properly nested.

def solution(s)
  left = {'(' => ')'}
  right = {')' => '('}
  stack = []
  s.split('').each do |c|
    stack.push(left[c]) if left[c]
    return 0 if right[c] && c != stack.pop
  end
  return 0 if stack.length > 0
  return 1
end