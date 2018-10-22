def cut_stick(people_num, size)
  count = 0
  current_num = 1
  while size > current_num do
    current_num += current_num < people_num ? current_num : people_num
    count = count + 1
  end
  p count
end

cut_stick(3, 20)
cut_stick(5, 100)
