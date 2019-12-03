def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            word[i] = ""
            return word
        else
            i -= 1
        end
    end
    word
end

def vowel_counts(str)
    hash = Hash.new(0)
    vowels = "aeiou"
    str.each_char do |ele|
        if vowels.include?(ele.downcase)
            hash[ele.downcase] += 1
        end
    end

    hash

end

def caesar_cipher(str, num)
    new_str = ""
    alpha = ("a".."z").to_a

    str.each_char.with_index do |char, idx|
        if !alpha.include?(char)
            new_str += char
        else
            old_idx = alpha.index(char)
            new_idx = (old_idx + num) % 26
            new_str += alpha[new_idx]
        end
    end
    new_str
end