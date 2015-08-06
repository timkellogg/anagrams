class String

  define_method(:anagrams) do |arr|
    target_word = self.downcase.split("").sort
    answer_arr = []

    arr.each do |word|
      sorted_word = word.downcase.split("").sort
      if target_word == sorted_word
        answer_arr.push(true)
      else
        answer_arr.push(false)
      end
    end

    answer_arr

  end

end
