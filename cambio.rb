#!/usr/bin/env ruby

require 'nmatrix'

class Money
  def minimize matrix
    first = matrix - matrix.transpose
    first = first.triu(-1)
  end

  def answer matrix,dim
    arr = Array.new
    (0..dim-1).each do |i|
      arr << matrix.slice(0..i,i+1..dim-1).reduce(:+)
    end
    arr.compact
  end
end
