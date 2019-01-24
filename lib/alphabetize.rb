def alphabetize(arr)
  ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |x|
    x.split("").map do |char|
      ESPERANTO_ALPHABET.index(char)
    end
  end
end