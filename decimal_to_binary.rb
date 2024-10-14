#!/usr/bin/ruby
def decimal_to_binary(number, arr)
  if number < 1
    return arr.reverse.join
  end
  result = number / 2
  mod = number % 2
  arr << mod
  decimal_to_binary(result, arr)
end

bin_ary = []
puts 'Enter number:'
number = gets.chomp.to_i
final_binary = decimal_to_binary(number, bin_ary)
puts "result: #{final_binary}"

