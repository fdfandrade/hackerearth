lift_a = 0
lift_b = 7

T = gets.chomp
test_cases = T.to_i

O = []

test_cases.times do
  floor = gets.chomp

  d_to_a = (floor.to_i - lift_a.to_i).abs
  d_to_b = (floor.to_i - lift_b.to_i).abs

  if d_to_a <= d_to_b
    lift_a = floor
    O.push 'A'
  else
    lift_b = floor
    O.push 'B'
  end
end

puts O
