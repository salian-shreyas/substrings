def substrings(word, dictionary)
  word.downcase!

  dictionary.reduce(Hash.new(0)) do |result, substring|
    word.gsub(substring.downcase) {result[substring] += 1}
    result
  end
end

dictionary = [
    "below", "down", "go", "going", "ruby", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit", "be"
]
word = "Ruby is beautiful!"

puts substrings(word, dictionary)
