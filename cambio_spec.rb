require_relative 'cambio'
require 'nmatrix'

describe Money do
  context "When checking minimizer"do
    
    matrix = N[[0,5,3],[2,0,7],[6,1,0]]
    min = Money.new

    it "should return the correct values when we minimize the matrix" do
      answer = min.minimize(matrix)
      expect(answer).to eq N[[0,3,-3],[0,0,6],[0,0,0]]
    end

    it "should return the correct array when we find the answer" do
      answer = min.answer(min.minimize(matrix),3)
      expect(answer).to eq [0,3]
    end
  end
end


