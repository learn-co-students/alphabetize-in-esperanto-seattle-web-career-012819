ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |x|
    x.split("").map do |char|
      ESPERANTO_ALPHABET.index(char)
    end
  end
end