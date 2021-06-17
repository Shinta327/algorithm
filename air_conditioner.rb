input_lines = readlines
room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5
  require_time = 5

elsif temperature_diff > 4 && temperature_diff < 10 then
  require_time = 30

elsif temperature_diff >= 10 then
  require_time = 60
end

air_power = input_lines[2].to_i

if air_power == 1
  puts require_time

elsif air_power == 2
  puts (require_time - 5)

elsif air_power == 3
  puts (require_time - 10)

else
  puts "風量の値は１〜３にしてください"
end