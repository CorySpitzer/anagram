require('./lib/anagram')
require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)

end

get('/anagram') do
  compare_word = params.fetch('compare_word')
  word_list = params.fetch('word_list').split(' ')
  @result = compare_word.anagrams(word_list)
end
