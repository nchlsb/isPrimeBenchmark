def is_prime(n):

    return n > 1 and all(n % i != 0 for i in range(2, math.ceil(math.sqrt(n))))

test_num = 10000000002065383
