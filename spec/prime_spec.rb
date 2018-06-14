require_relative '../lib/prime.rb'

describe Prime do
  it 'checks if a number is prime' do
    expect(Prime.valid?(10)).to eq(false)
    expect(Prime.valid?(49)).to eq(false)
    expect(Prime.valid?(101)).to eq(true)
    expect(Prime.valid?(29)).to eq(true)
  end

  it 'generates any number of primes' do
    expect(Prime.first(1)).to eq([2])
    expect(Prime.first(3)).to eq([2, 3, 5])
    expect(Prime.first(5)).to eq([2, 3, 5, 7, 11])
    expect(Prime.first(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71])
  end

  it 'generates 10 primes by default' do
    expect(Prime.first).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
  end
end
