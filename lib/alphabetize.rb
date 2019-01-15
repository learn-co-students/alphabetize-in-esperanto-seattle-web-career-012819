ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")

def alphabetize(arr)
  # code here
  arr.map{|phrase| phrase.split("")}.sort do |p1, p2|
    equivalence = 0
    p_index = 0

    while(p_index < [p1.size,p2.size].min && equivalence == 0)
      p1_char = ESPERANTO_ALPHABET.index(p1[p_index])
      p2_char = ESPERANTO_ALPHABET.index(p2[p_index])

      equivalence = (p1_char <=> p2_char)
      p_index += 1
    end
    equivalence
  end.map{|phrase| phrase.join}
end
