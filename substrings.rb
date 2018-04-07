def substrings(strings, array)
  result = Hash.new(0)
  words = strings.split(/\W+/)
  array.length.times do |match|
    words.length.times do |word|
      result[array[match]] += 1 if words[word].include? array[match]
    end
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, sit down! How's it going?", dictionary)
