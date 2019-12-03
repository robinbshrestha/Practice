def average(num_1, num_2)
    return (num_1 + num_2)  / 2.0
end

def average_array(arr)
    arr.sum / arr.length.to_f
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sent)
    ans = []
    words = sent.split
    words.each.with_index do |word, i|
        if i % 2 == 0
            ans << word.upcase 
        else
            ans << word.downcase
        end
    end
    ans.join(" ")
end