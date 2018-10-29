def is_loop(n)
  check = n * 3 + 1
  while check != 1 do
    check = check.even? ? check / 2 : check * 3 + 1
    return true if check == n
  end
  return false
end

count = 0
2.step(10_000, 2){|i| count +=1 if is_loop(i) }

p count
