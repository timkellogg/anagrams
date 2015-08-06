require("sinatra")
require("sinatra/reloader")
require("./lib/anagrams")


get("/") do
  erb :form
end

get("/anagrams") do

  base_word = params.fetch("target_word")
  word_arr  = params.fetch("word_arr")

  # Splitting logic
  container = []
  word_arr.split(" ").each do |word|
    container.push(word)
  end

  @output  =  base_word.anagrams(container)
  erb(:anagrams)
end
