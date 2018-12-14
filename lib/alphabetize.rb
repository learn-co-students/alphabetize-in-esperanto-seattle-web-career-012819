# Language constant
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

#
# I will need to research the inner workings of how to do this in much greater
# detail to fully understand what is happening here.
#
def alphabetize(arr)
  sorted_array = arr.sort_by do |phrase|
    phrase.chars.map { |alpha_char| ESPERANTO_ALPHABET.index(alpha_char) }
  end
end