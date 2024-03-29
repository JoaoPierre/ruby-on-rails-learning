class Hamming
  def self.compute(inicial, compare)
    return 0 if inicial.length == 0 && compare.length == 0
    raise ArgumentError if inicial.length == 0 || compare.length == 0 || compare.length != inicial.length

    arr_char_inicial = inicial.bytes
    arr_char_compare = compare.bytes

    count = 0
    i = 0

    while i < arr_char_inicial.length
      if arr_char_inicial[i] != arr_char_compare[i]
        count += 1
        i += 1
      else
        i += 1
      end
    end
    count
  end
end

Hamming.compute("AAAAGST", "AAASGTT")
