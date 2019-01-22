def alphabetize(arr)
  e_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  arr.sort_by do |phrase|
    #puts sentence
    phrase.split("").map do |letter|
      e_alphabet.index(letter)
    end
  end
end