def caesar_cipher(string, shift)
  arr = string.split('')
  arr.map! do |char|
    if (65..90) === char.ord
      char = char.ord + shift <= 90 ? (char.ord + shift).chr : (char.ord + shift - 26).chr
    else
      if (97..122) === char.ord
        char = char.ord + shift <= 122 ? (char.ord + shift).chr : (char.ord + shift - 26).chr
      else
        char
      end
    end
  end
  arr.join('')
end

caesar_cipher('What a string!', 5)
