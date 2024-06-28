dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, words)

end
def substring_to_arr(word)
    substring_arr = []
    #looping for each letter in the given word
    for i in 0...word.length
        #looping for the letters after the previous
        for j in i...word.length do 
            #adding substrings to array
            substring_arr.push(word[i..j])
        end
    end
    substring_arr
end
def count_matches(substr,words)
    counter = 0
    words_str = words.join(" ")
    words.each do |word|
        unless words_str.include?(substr)
          if substr == word
            counter+=1
          end
        end
    end
    counter

substrings("below", dictionary)
#expected output { "below" => 1, "low" => 1 }
