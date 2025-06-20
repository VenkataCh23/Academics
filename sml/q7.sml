fun is_prime(n: int): bool =
    if n <= 1 then false
    else
        let
            fun check_divisor(d: int): bool =
                if d * d > n then true
                else if n mod d = 0 then false
                else check_divisor(d + 1)
        in
            check_divisor(2)
        end;

fun primes(nums: int list): int list =
    List.filter is_prime nums;

val primeList1 = primes([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
val primeList2 = primes([11, 12, 13, 14, 15]);
val primeList3 = primes([16, 17, 18, 19, 20]);
val primeList4 = primes([]);
val primeList5 = primes([24, 25, 26, 27]);
