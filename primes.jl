# Algorithm to test integers for primality between 2 and `limit` integer

# TODO: use generators to accelerate
# TODO: after loop, implement Sieve of Eratosthenese
# TODO: after Eratosthenese, implementent segmented Eratosthenese
# TODO: use SparseArray/Matrix, CSC storage with segmented method

function is_prime(number)
    if number < 2
        return false
    end
    if number == 2
        return true
    end
    for i in 2:round(Int, sqrt(number)+1)
        if number % i == 0
            return false
        end
    end
    return true
end
   
function return_primes(limit)
    primes = []
    for i in 1:limit
        if is_prime(i)
            push!(primes, i)
        end
    end
    return primes
end

function stream_primes(limit)
    for i in 1:limit
        if is_prime(i)
            println(i)
        end
    end
end

# Also works:
limit = 250
[is_prime(i) for i in 1:limit]

function eratosthenese(limit)
    sieve = fill(true, limit)
    sieve[1] = 0

    for i in 2:round(Int, sqrt(limit)+1)
        double_i = i * 2
        while double_i < limit
            sieve[double_i] = false
            double_i += i
        end
    end
    
    primes = []
    for j in 1:limit-1
        if sieve[j] == true
            push!(primes, j)
        end
    end

    return primes
end
