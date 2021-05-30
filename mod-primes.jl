# Algorithm to test integers for primality between 2 and `limit` integer

# TODO: use generators to accelerate
# TODO: first complete loop
# TODO: after loop, implemente Sieve of Eratosthenese

primes = []
limit = 20
subjects = Array(1:limit)
factors = Array(1:limit/2)

i = subjects[2:end][4]
j = factors[2:end][2]
j = Array(2:6)
i.%j

while i%j == 0

        
if i%j != 0
    nothing
else
    push!(primes, i)
end

primes    
            

for i in subjects[2:end]
    for j in factors[2:end]
        if i%j == 0
            nothing
        else
            push!(primes, i)
        end
    end
end


primes



for i in subjects
    i/2
end


function det_primes(limit)
    subjects = Array(1:limit)
    for i in subjects
        if i%2 != 0
            
            
        

for i in 1:20
    primes = []
    
