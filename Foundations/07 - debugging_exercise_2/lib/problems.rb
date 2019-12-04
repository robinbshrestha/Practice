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