#!/usr/bin/env ruby

# print the numbers 1 - 100
# if the number is divisible by 3, print Fizz
# if the number is divisible by 5, print Buzz
# if the number is divisible by 3 and 5, print FizzBuzz

numbers = (1..100).to_a
fizzbuzz_numbers = numbers.map! {|num|
  if num % 15 == 0
    'FizzBuzz'
  elsif num % 5 == 0
    'Buzz'
  elsif num % 3 == 0
    'Fizz'
  else
    num
  end
}
puts fizzbuzz_numbers


# original program:
#
# index = 0
# numbers.each do |num|
#   if (num % 15).zero?
#     fizzbuzz[index] = 'FizzBuzz'
#   elsif (num % 3).zero?
#     fizzbuzz[index] = 'Fizz'
#   elsif (num % 5).zero?
#     fizzbuzz[index] = 'Buzz'
#   else
#     fizzbuzz[index] = num
#   end
#   index += 1
# end
#
# fizzbuzz.each do |num|
#   puts num
# end
