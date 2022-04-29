
# Euler pentagonal series
# 1, 2, 5, 7, 12, 15, 22, 26, 35, 40
class Pentagonal
  def nth(n)
    i = (n + 1)/2
    n.even? ? (3 * i**2 + i) / 2 : (3 * i**2 - i) / 2
  end
end
