# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    factors = []

    (1..num).each do |i|
        if num % i == 0
            factors << i 
        end
    end

    primes = []
    factors.each do |num|
        if is_prime?(num)
            primes << num 
        end
    end

    primes.max
end

def is_prime?(num)
    if num < 2 
        return false
    end

    (2...num).each do |i|
        if num % i == 0
            return false 
        end
    end
    true
end

def unique_chars?(str)
    letters = str.split("")
    hash = Hash.new(0)

    letters.each do |letter|
        hash[letter] += 1
    end

    hash.each do |k, v|
        if v > 1
            return false 
        end
    end

    true
end

def dupe_indices(arr)
    hash = Hash.new(0)
    other_hash = Hash.new{|h, k| h[k] = []}

    arr.each do |char|
        hash[char] += 1
    end


    hash.each do |k, v|
        if v > 1
            i = 0
            while i < arr.length
                if arr[i] == k
                    other_hash[k].push(i)
                end
                i += 1
            end
        end
    end

    other_hash


end

def ana_array(arr1, arr2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    arr1.each do |letter|
        hash1[letter] += 1 
    end

    arr2.each do |letter|
        hash2[letter] += 1
    end

    hash1 == hash2

end