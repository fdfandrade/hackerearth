number_of_test_cases = gets.chomp.to_i
output = []

1.upto(number_of_test_cases) do
    seat = gets.chomp.to_i
    w_seat = seat % 12

    w_seat = 12 if w_seat == 0
    facing_seat = (13 - w_seat).abs

    seat_type = 'WS'
    seat_type = 'MS' if [2, 11, 5, 8].include?(w_seat)
    seat_type = 'AS' if [3, 10, 4, 9].include?(w_seat)

    output. push [facing_seat + seat - w_seat, seat_type ]
end

output.each do |o|
    puts "#{o[0]} #{o[1]}"
end