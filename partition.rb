require './lib/pentagonal.rb'

class Partition
  @@partitions = {
    0 => 1,
    1 => 1,
    2 => 2,
    3 => 3,
    4 => 5
  }

  def nth(n)
    return @@partitions[n] if n < 5

    @@partitions[n] ||= begin
      p = Pentagonal.new

      i = 1
      partitions = 0

      loop do
        pentagonal = p.nth(i)
        break if n - pentagonal < 0

        next_term = self.nth(n - pentagonal)
        partitions = partitions.send(next_sign(i), next_term)
        i += 1
      end
      partitions
    end
  end

  def next_sign(i)
    ((i +1)/2).even? ? :- : :+
  end
end
