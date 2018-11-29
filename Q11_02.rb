a = b = 1
count = 0

while count < 11 do
  c = a + b
  sum = 0
  c.to_s.split(//).each{|e| sum += e.to_i}
  if c % sum == 0
    p c
    count += 1
  end
  a, b = b, c
end
