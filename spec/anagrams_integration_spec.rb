require("capybara/rspec")
require("./app.rb")
Capybara.app = Sinatra::Application

describe('returns an anagram outcome', {:type => :feature}) do
  it('takes a target word and determines if items in an array are anagrams of that word') do
    visit('/')
    fill_in('target_word', :with => 'hello')
    fill_in('word_arr', :with => 'elloh jhfdk')
    click_button('Submit')
    expect(page).to have_content('elloh: true')
    expect(page).to have_content('jhfdk: false')
  end
end
