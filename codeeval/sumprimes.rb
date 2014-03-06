require 'prime'

class SumPrimes
  def sum(first_primes)
    totes = 0
    guys = Prime.first first_primes
    guys.each do |p|
      totes += p
    end
    return totes
  end
end

sp = SumPrimes.new()
puts sp.sum(1000)
