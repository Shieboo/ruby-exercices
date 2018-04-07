def caesar_cipher(string, shift)
  # should return "Bmfy f xywnsl!"
  arr = string.split('')

  arr.map! do |char|
    # manage uppercased character
    if (65..90) === char.ord
      char = char.ord + shift <= 90 ? (char.ord + shift).chr : (char.ord + shift - 26).chr
    # manage downcased character
    else
      if (97..122) === char.ord
        char = char.ord + shift <= 122 ? (char.ord + shift).chr : (char.ord + shift - 26).chr
      # other character
      else
        char
      end
    end
  end
  arr.join('')
end

caesar_cipher('What a string!', 5)
# should return "Bmfy f xywnsl!"

# notes:
# a = 97
# z = 122
# A = 65
# Z = 90
