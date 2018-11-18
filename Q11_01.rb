def fibonacchi(n)
  if n == 0 || n == 1
    1
  else
    fibonacchi(n - 1) + fibonacchi(n - 2)
  end
end

n = 0
count = 0

while TRUE
  sum = 0
  fibonacchi = fibonacchi(n)
  fibonacchi.to_s.split(//).each{|d| sum += d.to_i}
  count += 1 if fibonacchi % sum == 0
  p fibonacchi if fibonacchi % sum == 0
  break if count == 12
  n += 1
end
