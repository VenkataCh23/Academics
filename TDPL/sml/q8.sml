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

fun smallest_prime_factor(n: int): int =
    let
        fun find_factor(d: int): int =
            if n mod d = 0 then d
            else find_factor(d + 1)
    in
        find_factor(2)
    end;

fun primeFactors(x: int): int list =
    let
        fun helper(n: int, acc: int list): int list =
            if n < 2 then acc
            else
                let
                    val factor = smallest_prime_factor(n)
                    val next_n = n div factor
                in
                    helper(next_n, factor :: acc)
                end
    in
        helper(x, [])
    end;

val factors1 = primeFactors(28);
val factors2 = primeFactors(30);
val factors3 = primeFactors(1);
val factors4 = primeFactors(13);
val factors5 = primeFactors(100);
