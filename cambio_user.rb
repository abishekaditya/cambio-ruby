#!/usr/bin/env ruby
require_relative 'cambio'
require 'nmatrix'

puts "Enter dimension"
d = gets.to_i
puts "Enter stuff"
arr = Array.new
arr << gets.chomp.split(',').map(&:to_i)
mat = N[arr].reshape([d,d])

mon = Money.new(mat)

y = mon.answer
y.count.times do |i|
  puts "#{(97+i).chr} to #{(98+i).chr} : #{y[i]}"
end
