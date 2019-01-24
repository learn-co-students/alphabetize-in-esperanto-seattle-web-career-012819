def alphabetize(arr)
  arr.sort_by do |x|
    x.split("").collect do |char|
      ESPERANTO_ALPHABET.index(char)
    end
  end
end