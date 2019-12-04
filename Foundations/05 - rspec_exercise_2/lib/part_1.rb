def partition(arr, num)
    new_arr = []
    less = []
    more = []
    arr.each do |ele|
        if ele < num 
            less << ele
        else
            more << ele  
        end
    end
    new_arr << less
    new_arr << more
end

def merge(hash1, hash2)
    new_hash = {}
    hash1.each do |k, v|
        new_hash[k] = v
    end

    hash2.each do |k, v|
        new_hash[k] = v
    end

    return new_hash
end

def censor(sent, arr)
    words = sent.split
    ans = []

    words.each do |word|
        if arr.include?(word.downcase)
            ans << ast(word)
        else
            ans << word 
        end
    end

    ans.join(" ")
end

def ast(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word += "*"
        else
            new_word += char 
        end
    end
    new_word 
end

def power_of_two?(num)
    product = 1
    while product < num 
        product *= 2
    end

    product == num 
end