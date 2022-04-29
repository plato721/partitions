class Partition
  @@partitions = {
    0 => 1,
    1 => 1,
    2 => 2,
    3 => 3,
    4 => 5
  }

  def partitions(n)
    return @@partitions[n] if n < 5

    @@partitions[n] ||= begin
      i = 1
      total = 0

      loop do
        pentagonal = euler_pentagonal(i)
        break if n - pentagonal < 0

        next_term = partitions(n - pentagonal)
        total = total.send(next_sign(i), next_term)
        i += 1
      end
      total
    end
  end

  def euler_pentagonal(n)
    i = (n + 1) / 2
    n.even? ? (3 * i**2 + i) / 2 : (3 * i**2 - i) / 2
  end

  def next_sign(i)
    ((i + 1) / 2).even? ? :- : :+
  end
end
