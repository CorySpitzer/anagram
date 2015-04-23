require('rspec')
require('anagram')

describe('String#anagram_of?') do
  # tells us if a word is an anagram
  it('returns true if a word is an anagram') do
    expect('act'.anagram_of?('cat')).to(eq(true))
  end

end
