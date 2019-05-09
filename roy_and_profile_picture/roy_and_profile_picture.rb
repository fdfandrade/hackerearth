minimum_dimension = gets.chomp.to_i
number_of_photos = gets.chomp.to_i

output = []

number_of_photos.times do
  size = gets.chomp

  width = size.split(' ')[0].to_i
  height = size.split(' ')[1].to_i

  if width < minimum_dimension || height < minimum_dimension
    output.push 'UPLOAD ANOTHER'
  elsif width == height
    output.push 'ACCEPTED'
  else
    output.push 'CROP IT'
  end
end

puts output
