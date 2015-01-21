def substrings(string, dictionary)
    ret = {}
    string.downcase!
    
    dictionary.each do |word|
        count = string.scan(word).length
        ret[word] = count if count > 0
    end
    
    ret
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
