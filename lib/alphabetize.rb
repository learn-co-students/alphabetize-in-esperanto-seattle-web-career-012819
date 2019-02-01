def alphabetize(arr)
  esp_alph = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ascii = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\"

  arr.sort_by { |word| word.tr(esp_alph, ascii)[0..6] }
end
