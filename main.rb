def substrings(word, dictionary)
  word.downcase!

  dictionary.reduce(Hash.new(0)) do |result, substring|

    substring.downcase!
    word.gsub(substring) {result[substring] += 1}
    
    result
  end

end
