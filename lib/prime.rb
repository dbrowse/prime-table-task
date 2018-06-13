class Prime
  # Checks if the number provided is actually a prime
  def self.valid?(n)
    impossible_endings = [0, 2, 4, 5, 6, 8]

    return false if n <= 1
    return false if impossible_endings.include?(n % 10) && n != 2 && n != 5

    root = Math.sqrt(n).to_i
    root.downto(2) { |num| return false if (n % num).zero? }

    true
  end

  # Return an array of the first "n" prime numbers
  def self.first(num = 10)
    primes = []
    i = 2

    until primes.length == num
      primes << i if Prime.valid?(i)
      i += 1
    end

    primes
  end
end
