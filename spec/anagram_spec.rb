require('rspec')
require('anagram')

describe('String#anagram_of?') do
  # tells us if a word is an anagram
  it('returns true if a word is an anagram') do
    expect('act'.anagram_of?('cat')).to(eq(true))
  end

  # handles a multi-word sentence
  it('handles a multi-word string with spaces') do
    expect('eat me'.anagram_of?('meat e')).to(eq(true))
  end

  # doesn't work for words that are not anagrams of each other
  it('returns false if words are not anagrams') do
    expect('abc'.anagram_of?('cat')).to(eq(false))
  end

  # Two blank words are vacuously true
  it('returns true for two empty strings') do
    expect(''.anagram_of?('')).to(eq(true))
  end

end

describe('String#anagrams') do
  # handles a one word list
  it('handles a one word array') do
    expect('cat'.anagrams(['tac'])).to(eq(['tac']))
  end

  # handles multi-word list
  it('handles a multi-word array') do
    expect('cat'.anagrams(['tac', 'eat', 'act'])).to(eq(['tac', 'act']))
  end
end
