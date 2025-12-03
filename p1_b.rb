start=50
count=0

while line=gets
  direction, times = /(\w)(\d+)/.match(line).captures

  was_zero = start == 0
  case direction
  when "L"
    start -= times.to_i
  when "R"
    start += times.to_i
  end

  count += if start <= 0 then ((start-1)/100).abs - (if was_zero then 1 else 0 end) else start/100 end
  start %= 100
end

puts count
