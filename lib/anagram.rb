class String
  define_method(:anagram_of?) do |word|
    word.split('').sort() == self.split('').sort()
  end
end
