require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', :type => :feature) do
  it('inputs a one word string, a multi-word string, and clicks send') do
    visit('/')
    fill_in('compare_word', :with => "cat")
    fill_in('word_list', :with => "cat eat act teach")
    click_button('submit')
    expect(page).to_have(content("cat act"))
  end
end
