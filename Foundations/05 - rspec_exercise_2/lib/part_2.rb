def palindrome?(str)
    str.each_char.with_index do |char, i|
        if str[i] != str[-i - 1]
            return false
        end
    end
    true

end

def substrings(str)
    subs = []
    (0...str.length).each do |start|
        (start...str.length).each do |last|
            subs << str[start..last]
        end
    end
    subs
end

def palindrome_substrings(string)
    substrings(string).select { |substr| palindrome?(substr) && substr.length > 1}
end