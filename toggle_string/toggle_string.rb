str = gets.chomp
output = ''

str.each_char do |c|
  output += if /[[:upper:]]/ =~ c
              c.downcase
            else
              c.upcase
            end
end

puts output
