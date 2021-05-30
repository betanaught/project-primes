# Generate list of primes using the Sieve of Atkin algorithm

def sieveAtkin(setsize):

    if (setsize > 2):
        print(2, end = " ")
    if (setsize > 3):
        print(3, end = " ")

    # Generate all-false sieve array as large as setsize, this will
    # be populated with primes as they are found.
    sieve = [False] * setsize
    for i in range(0, setsize):
        sieve[i] = False

    '''Follow Sieve of Atkin to find primes'''
    '''sieve[n] is prime if:
        a) For n % 12 = 1 or n % 12 = 5, n = (4x^2) + (y^2) has odd number
           of solutions, odd number of (x, y) pairs
        b) For n % 12 = 7, n = (3x^2) + (y^2) has odd number of solutions
        c) For n % 12 = 11, n = (3x^2) - (y^2) has odd number of solutions
           and x > y'''
    x = 1
    while (x * x < setsize):
        y = 1
        while (y * y < setsize):
            n = (4 * x * x) + (y * y)
            if (n <= setsize and (n % 12 == 1 or
                                  n % 12 == 5)):
                sieve[n] ^= True

            n = (3 * x * x) + (y * y)
            if (n <= setsize and (n % 12 == 7)):
                sieve[n] ^= True

            n = (3 * x * x) - (y * y)
            if (x < y and n <= setsize and n % 12 == 11):
                sieve[n] ^= True
            y += 1
        x += 1

    '''Mark all multiples of squares as non-prime'''
    r = 5
    while (r * r < setsize):
        if (sieve[r]):
            for i in range (r * r, setsize, r):
                sieve[r] = False

    '''Print those primes'''
    for a in range(5, setsize):
        if (sieve[a]):
            print(a, end = " ")
