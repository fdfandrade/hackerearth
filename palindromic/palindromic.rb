def palindromic?(str)
  l = 0
  r = str.length - 1

  while l < r
    return 'NO' if str[l] != str[r]

    l += 1
    r -= 1
  end

  'YES'
end

str = gets.chomp
puts palindromic? str
