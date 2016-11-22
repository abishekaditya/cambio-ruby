require_relative 'cambio'
require 'nmatrix'

describe Money do
  context "When checking minimizer"do
    
    matrix = N[[0,5,3],[2,0,7],[6,1,0]]
    min = Money.new(matrix)

    it "should minimize the matrix" do
      answer = min.minimize
      expect(answer).to eq N[[0,3,-3],[0,0,6],[0,0,0]]
    end

    it "should give correct array" do
      answer = min.answer
      expect(answer).to eq [0,3]
    end
  end
end


