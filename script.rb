dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def substrings(word, words)
    substr_arr = substring_to_arr(word)
    substr_hash = {}
    substr_arr.each do |str|
        matches = count_matches(str,words)
        #increment if the key already exists
        if matches > 0
            unless substr_hash[str] == nil
                substr_hash[str] +=1
            else
                substr_hash[str] = matches
            end
        end
    end
    substr_hash
end
def substring_to_arr(word)
    substring_arr = []
    #ignore case
    word = word.downcase
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
    words.each do |word|
        #no need to count if substr isn't in array
        if words.include?(substr)
          if substr == word
            counter+=1
          end
        end
    end
    counter
end

p substrings("below", dictionary)
#expected output { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# exprected output { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

