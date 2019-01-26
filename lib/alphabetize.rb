def alphabetize(arr)
  abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef"
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  arr.sort_by {|character| character.tr(esperanto, abc)}
end

#".tr" directly translates individual characters in two matching sets. With more complicated sorting, ".gsub" would be preferred, but it is slower than ".tr"
#can also use ascii codes as a string to translate against. It is unclear to me why "\\" is considered a single symbol in ascii sorting for the 29th char. (ascii = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\")