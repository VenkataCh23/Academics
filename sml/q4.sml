fun sum_of_proper_divisors(n: int): int =
    let
        fun is_divisor(d: int): bool =
            n mod d = 0

        fun sum_divisors(current: int, accumulator: int): int =
            if current >= n then
                accumulator
            else if is_divisor(current) then
                sum_divisors(current + 1, accumulator + current)
            else
                sum_divisors(current + 1, accumulator)
    in
        sum_divisors(1, 0)
    end;

fun perfect(x: int): bool =
    if x <= 0 then
        false
    else
        x = sum_of_proper_divisors(x);

val test1 = perfect(6);
val test2 = perfect(28);
val test3 = perfect(12);
val test4 = perfect(0);