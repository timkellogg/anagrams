require('rspec')
require('anagrams')

describe("String#anagrams") do
  it("handles two letters anagrams") do
    expect('he'.anagrams(['eh', 'he'])).to(eq([true, true]))
  end

  it("handles long words") do
    expect('for'.anagrams(['for', 'rof', 'fro', 'orf', 'ofr', 'rfo'])).to(eq([true, true, true, true, true, true]))
  end

  it("returns false when not using all letters") do
    expect("we".anagrams(['w', 'e'])).to(eq([false, false]))
  end

  it("handles upper and lower case letters") do
    expect("Da".anagrams(["ad", "da"])).to(eq([true, true]))
  end


end
