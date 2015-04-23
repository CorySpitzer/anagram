class String
  define_method(:anagram_of?) do |word|
    word.split('').sort() == self.split('').sort()
  end

  define_method(:anagrams) do |words|
    compare_word = self
    words.each_with_index() do |word, index|
      if compare_word.anagram_of?(word) == false
        words.pop(index)
      end
    end
    words
  end

end
