class DnaStrandPair

  def initialize(strand_1, strand_2)
    @strand1 = strand_1
    @strand2 = strand_2
  end

  def hamming_distance
    first = @strand1.split('')
    second = @strand2.split('')

    x = 0
    diff = 0

    while x < @strand1.length && x < @strand2.length
      diff += 1 if first[x] != second[x]
      x += 1
    end
    diff
  end

end
