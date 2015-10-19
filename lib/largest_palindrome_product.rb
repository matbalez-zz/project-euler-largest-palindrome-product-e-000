# Implement your procedural solution here!
def largest_palindrome_product
  largest = 0
  test = 0
  for i in 999.downto(100) do
    for j in 999.downto(100) do
      test = i*j
      if is_palindrome?(test)
        if test > largest
          largest = test
        end
      end
    end
  end
  largest
end

def is_palindrome?(num)
  arr = num.to_s.chars.to_a
  max = (arr.length - 1) / 2
  i = 0 
  match = true
  while i <= max && match do
    if arr[i] != arr[arr.length - 1 - i]
      match = false
    end
    i += 1
  end
  match
end