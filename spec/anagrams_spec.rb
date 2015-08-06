require('rspec')
require('anagrams')

describe("String#anagrams") do
  it("returns the word and a boolean value") do
    expect("Da".anagrams(["ad", "da"])).to(eq([["ad", true], ["da", true]]))
  end

  it("returns false when not using all letters in anagram") do
    expect("we".anagrams(['w', 'e'])).to(eq([['w', false], ['e', false]]))
  end
end
