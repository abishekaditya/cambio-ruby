#!/usr/bin/env ruby

require 'nmatrix'

class Money
  def initialize nmatrix
    @a = nmatrix
  end

  def minimize 
    minimized = @a - @a.transpose
    minimized.triu(-1)
  end

  def answer
    min = minimize
    dim = @a.rows
    arr = Array.new
    (0..dim-1).each do |i|
      arr << min.slice(0..i,i+1..dim-1).reduce(:+)
    end
    arr.compact
  end
end
