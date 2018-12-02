i = 1
while true
  int = sprintf("%10.10f", Math.sqrt(i)).sub('.',"")[0..9]
  break if int.split('').uniq.count == 10
  i += 1
end
p i

j = 1
while true
  int = sprintf("%10.10f", Math.sqrt(j)).gsub(".","")
  break if int.split('').uniq.count == 10
  j += 1
end
p j
