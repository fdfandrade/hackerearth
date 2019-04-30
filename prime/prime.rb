def prime?(num)
  return num > 1 if num <= 3
  return false if (num % 2).zero? || (num % 3).zero?

  i = 5
  while i * i <= num
    return false if (num % i).zero? || (num % (i + 2)).zero?

    i += 6
  end

  true
end

n = gets.chomp.to_i
1.upto(n) do |i|
  print "#{i} " if prime?(i)
end
