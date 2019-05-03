number_of_tests = gets.chomp.to_i

output = []

number_of_tests.times do
  str1 = gets.chomp
  str2 = gets.chomp

  count = {}

  str1.each_char do |c|
    count[c] = 0 if count[c].nil?
    count[c] += 1
  end

  str2.each_char do |c|
    count[c] = 0 if count[c].nil?
    count[c] -= 1
  end

  deletion = 0
  count.each do |_k, v|
    deletion += v.abs
  end

  output.push deletion
end

puts output
