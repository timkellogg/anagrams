require("sinatra")
require("sinatra/reloader")
require("./anagrams")

get("/") do
  erb :form
end

get("/anagrams") do

  base_word = params.fetch("tagert_word")
  word_arr  = params.fetch("word_arr")

  # Splitting logic
  container = []
  word_arr.split(" ").each do |word|
    container.push(word)
  end

  @output  =  base_word.anagrams(container)
  erb(:anagrams)
end
