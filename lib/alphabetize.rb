def convert_word(array) #create hash to hold the words to be converted
  hash = {}
  array.each do |word|
  hash[word] = []
  end
  hash
end

 def alpha_hash(str) #convert string to a numeric hash
 letter_hash = {}
 letter_hash[" "] = 0
 str.split("").each_with_index do |letter, i|
   letter_hash[letter] = i+1
  end
  letter_hash
end

 def hash_values(a_to_z_hash, word_hash) #set hash values to array of numbers
 word_hash.each do |word, value|
   word.split("").each do |letter|
     word_hash[word] << a_to_z_hash[letter]
   end
 end
end

 def sort_words(wordhash)
  #sorts the number array
 new_hash = wordhash.sort_by{ |word, value| value}
 new_hash = return_all_keys(new_hash)
 end

 def return_all_keys(hash)
 keys_array = []
 hash.each do |keys, value|
    keys_array << keys
    end
    keys_array
end

def alphabetize(arr)
alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
a_to_z_hash = alpha_hash(alphabet) #turns alphabet into numeric hash
word_hash = convert_word(arr) #creates hash to hold converting words
word_hash = hash_values(a_to_z_hash, word_hash) #sets values of word hash to array of #'s'
words = sort_words(word_hash) #sorts words
end
