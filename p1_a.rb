start=50
count=0

while line=gets
  direction, times = /(\w)(\d+)/.match(line).captures

  case direction
  when "L"
    start -= times.to_i
  when "R"
    start += times.to_i
  end
  start %= 100

  if start == 0 then
    count += 1
  end
end

puts count
