#!/usr/bin/env ruby

# print the numbers 1 - 100
# if the number is divisible by 3, print Fizz
# if the number is divisible by 5, print Buzz
# if the number is divisible by 3 and 5, print FizzBuzz

(1..100).each do |x|
  if x % 15 == 0
    puts 'FizzBuzz'
  elsif x % 3 == 0
    puts 'Fizz'
  elsif x % 5 == 0
    puts 'Buzz'
  else
    puts x
  end
end