# Codility Lesson 7 - Stacks and Queues
# Brackets
# Determine whether a given string of parentheses is properly nested.

def solution(s)
  left = { '(' => ')', '[' => ']', '{' => '}' }
  right = { ')' => '(', ']' => '[', '}' => '{' }
  stack = []
  a = s.split('')
  a.each do |c|
    stack.push(left[c]) if left[c]
    return 0 if right[c] && stack.pop != c
  end
  return 0 if stack.length > 0
  return 1
end