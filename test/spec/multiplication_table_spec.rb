require_relative '../lib/multiplication_table.rb'

describe MultiplicationTable do
  let(:three) { [2, 3, 5] }

  it 'is a Multiplication Table Object' do
    expect(MultiplicationTable.new(three, three)).to be_a MultiplicationTable
  end

  it 'can transform a prime multiplication table to a matrix' do
    expect(MultiplicationTable.new(three, three).table).to eq([[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]])
  end
end
